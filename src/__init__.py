"""
OpenAI/Codex CLI 自动注册系统
"""

from .app_meta import APP_NAME, APP_VERSION, __version__
from .config import get_settings, EmailServiceType
from .database import get_db, Account, EmailService, RegistrationTask
from .core import RegistrationEngine, RegistrationResult
from .services import EmailServiceFactory, BaseEmailService

__author__ = "Yasal"

__all__ = [
    'get_settings',
    'APP_NAME',
    'APP_VERSION',
    'EmailServiceType',
    'get_db',
    'Account',
    'EmailService',
    'RegistrationTask',
    'RegistrationEngine',
    'RegistrationResult',
    'EmailServiceFactory',
    'BaseEmailService',
]
