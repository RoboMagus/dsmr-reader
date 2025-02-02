import pickle  # noqa: S403

from django.conf import settings
from django.contrib.auth.mixins import LoginRequiredMixin
from django.views.generic import RedirectView
import dropbox

from dsmr_backup.models.settings import DropboxSettings


class DropboxAppAuthorizationView(LoginRequiredMixin, RedirectView):
    """
    Generates a one time authorization redirect for linking your Dropbox app.
    https://github.com/dropbox/dropbox-sdk-python/blob/main/example/oauth/commandline-oauth-pkce.py
    """

    def get_redirect_url(self, *args, **kwargs):
        dropbox_settings = DropboxSettings.get_solo()

        auth_flow = dropbox.DropboxOAuth2FlowNoRedirect(  # noqa: S106
            settings.DSMRREADER_DROPBOX_APP_KEY,
            use_pkce=True,
            token_access_type='offline',
            timeout=settings.DSMRREADER_CLIENT_TIMEOUT
        )
        authorize_url = auth_flow.start()

        # We need the data generated by the SDK (auth challenge) on oauth completion. So we'll serialize it.
        serialized_auth_flow = pickle.dumps(auth_flow)

        dropbox_settings.update(
            serialized_auth_flow=serialized_auth_flow,
            # Reset all other fields as well.
            refresh_token=None,
            one_time_authorization_code=None
        )

        return authorize_url
