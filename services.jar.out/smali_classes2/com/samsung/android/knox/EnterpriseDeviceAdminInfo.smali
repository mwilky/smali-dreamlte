.class public final Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;
.super Ljava/lang/Object;
.source "EnterpriseDeviceAdminInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final TAG:Ljava/lang/String; = "EnterpriseDeviceAdminInfo"

.field public static final USES_POLICY_ENTERPRISE_CONTAINER_TAG:Ljava/lang/String; = "android.permission.sec.ENTERPRISE_CONTAINER"

.field public static final USES_POLICY_ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT_TAG:Ljava/lang/String; = "android.permission.sec.ENTERPRISE_MOUNT_UNMOUNT_ENCRYPT"

.field public static final USES_POLICY_KNOX_ADVANCED_APP_MGMT:I = 0x63

.field public static final USES_POLICY_KNOX_ADVANCED_APP_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

.field public static final USES_POLICY_KNOX_ADVANCED_SECURITY:I = 0x64

.field public static final USES_POLICY_KNOX_ADVANCED_SECURITY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

.field public static final USES_POLICY_KNOX_CCM:I = 0x4c

.field public static final USES_POLICY_KNOX_CCM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

.field public static final USES_POLICY_KNOX_CERTENROL:I = 0x51

.field public static final USES_POLICY_KNOX_CERTENROL_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

.field public static final USES_POLICY_KNOX_CERT_PROVISIONING:I = 0x61

.field public static final USES_POLICY_KNOX_CERT_PROVISIONING_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

.field public static final USES_POLICY_KNOX_CLIPBOARD:I = 0x62

.field public static final USES_POLICY_KNOX_CLIPBOARD_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

.field public static final USES_POLICY_KNOX_CONTAINER_VPN:I = 0x45

.field public static final USES_POLICY_KNOX_CONTAINER_VPN_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_CONTAINER_VPN,com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

.field public static final USES_POLICY_KNOX_CUSTOM_DEX:I = 0x6a

.field public static final USES_POLICY_KNOX_CUSTOM_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

.field public static final USES_POLICY_KNOX_CUSTOM_PROKIOSK:I = 0x58

.field public static final USES_POLICY_KNOX_CUSTOM_PROKIOSK_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK,com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

.field public static final USES_POLICY_KNOX_CUSTOM_RUBENS_FEATURES:I = 0x54

.field public static final USES_POLICY_KNOX_CUSTOM_RUBENS_FEATURES_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

.field public static final USES_POLICY_KNOX_CUSTOM_SEALEDMODE:I = 0x50

.field public static final USES_POLICY_KNOX_CUSTOM_SEALEDMODE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

.field public static final USES_POLICY_KNOX_CUSTOM_SETTING:I = 0x4e

.field public static final USES_POLICY_KNOX_CUSTOM_SETTING_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

.field public static final USES_POLICY_KNOX_CUSTOM_SYSTEM:I = 0x4f

.field public static final USES_POLICY_KNOX_CUSTOM_SYSTEM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

.field public static final USES_POLICY_KNOX_DEACTIVATE_LICENSE:I = 0x48

.field public static final USES_POLICY_KNOX_DEACTIVATE_LICENSE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

.field public static final USES_POLICY_KNOX_DEX:I = 0x69

.field public static final USES_POLICY_KNOX_DEX_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DEX"

.field public static final USES_POLICY_KNOX_DLP:I = 0x56

.field public static final USES_POLICY_KNOX_DLP_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_DLP,com.samsung.android.knox.permission.KNOX_DLP_MGMT"

.field public static final USES_POLICY_KNOX_DUAL_DAR:I = 0x6c

.field public static final USES_POLICY_KNOX_DUAL_DAR_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

.field public static final USES_POLICY_KNOX_EBILLING_NOMDM:I = 0x66

.field public static final USES_POLICY_KNOX_EBILLING_NOMDM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM,com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

.field public static final USES_POLICY_KNOX_ENTERPRISE_BILLING:I = 0x55

.field public static final USES_POLICY_KNOX_ENTERPRISE_BILLING_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING,com.samsung.android.knox.permission.KNOX_EBILLING"

.field public static final USES_POLICY_KNOX_GENERIC_VPN:I = 0x44

.field public static final USES_POLICY_KNOX_GENERIC_VPN_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.KNOX_GENERIC_VPN,com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

.field public static final USES_POLICY_KNOX_KEYSTORE:I = 0x4d

.field public static final USES_POLICY_KNOX_KEYSTORE_PER_APP:I = 0x5e

.field public static final USES_POLICY_KNOX_KEYSTORE_PER_APP_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

.field public static final USES_POLICY_KNOX_KEYSTORE_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

.field public static final USES_POLICY_KNOX_NPA:I = 0x65

.field public static final USES_POLICY_KNOX_NPA_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_NPA"

.field public static final USES_POLICY_KNOX_RESTRICTION_PERM:I = 0x4b

.field public static final USES_POLICY_KNOX_RESTRICTION_PERM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RESTRICTION,com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

.field public static final USES_POLICY_KNOX_SDP:I = 0x59

.field public static final USES_POLICY_KNOX_SDP_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_SDP,com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

.field public static final USES_POLICY_KNOX_SEAMS_PERM:I = 0x49

.field public static final USES_POLICY_KNOX_SEAMS_PERM_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY:I = 0x68

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM:I = 0x4a

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_PERM_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

.field public static final USES_POLICY_KNOX_SEAMS_SEPOLICY_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

.field public static final USES_POLICY_KNOX_SECURE_TIMER:I = 0x6d

.field public static final USES_POLICY_KNOX_SECURE_TIMER_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SECURE_TIMER"

.field public static final USES_POLICY_KNOX_SIM_RESTRICTION:I = 0x6e

.field public static final USES_POLICY_KNOX_SIM_RESTRICTION_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

.field public static final USES_POLICY_KNOX_TRUSTED_PINPAD:I = 0x53

.field public static final USES_POLICY_KNOX_TRUSTED_PINPAD_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

.field public static final USES_POLICY_KNOX_UCM_MGMT:I = 0x6b

.field public static final USES_POLICY_KNOX_UCM_MGMT_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

.field public static final USES_POLICY_KNOX_UCM_PRIVILEGED:I = 0x5f

.field public static final USES_POLICY_KNOX_UCM_PRIVILEGED_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PRIVILEGED,com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

.field public static final USES_POLICY_KNOX_UCSM_ESE:I = 0x5a

.field public static final USES_POLICY_KNOX_UCSM_ESE_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_ESE,com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

.field public static final USES_POLICY_KNOX_UCSM_OTHER:I = 0x5b

.field public static final USES_POLICY_KNOX_UCSM_OTHER_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_OTHER,com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

.field public static final USES_POLICY_KNOX_UCS_PLUGIN:I = 0x5c

.field public static final USES_POLICY_KNOX_UCS_PLUGIN_TAG:Ljava/lang/String; = "com.sec.enterprise.permission.KNOX_UCM_PLUGIN,com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

.field public static final USES_POLICY_MDM_ANALYTICS:I = 0x40

.field public static final USES_POLICY_MDM_ANALYTICS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ANALYTICS"

.field public static final USES_POLICY_MDM_APN_SETTINGS:I = 0x28

.field public static final USES_POLICY_MDM_APN_SETTINGS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APN,com.samsung.android.knox.permission.KNOX_APN"

.field public static final USES_POLICY_MDM_APPLICATION:I = 0x1b

.field public static final USES_POLICY_MDM_APPLICATION_BACKUP:I = 0x35

.field public static final USES_POLICY_MDM_APPLICATION_BACKUP_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APP_BACKUP"

.field public static final USES_POLICY_MDM_APPLICATION_PERMISSION:I = 0x31

.field public static final USES_POLICY_MDM_APPLICATION_PERMISSION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APP_PERMISSION_MGMT"

.field public static final USES_POLICY_MDM_APPLICATION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_APP_MGMT,com.samsung.android.knox.permission.KNOX_APP_MGMT"

.field public static final USES_POLICY_MDM_AUDIT_LOG_PERMISSION:I = 0x33

.field public static final USES_POLICY_MDM_AUDIT_LOG_PERMISSION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_AUDIT_LOG,com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

.field public static final USES_POLICY_MDM_BLUETOOTH:I = 0x1c

.field public static final USES_POLICY_MDM_BLUETOOTH_SECURE_MODE:I = 0x41

.field public static final USES_POLICY_MDM_BLUETOOTH_SECURE_MODE_TAG:Ljava/lang/String; = "android.permission.sec.MDM_BLUETOOTH_SECUREMODE,com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

.field public static final USES_POLICY_MDM_BLUETOOTH_TAG:Ljava/lang/String; = "android.permission.sec.MDM_BLUETOOTH,com.samsung.android.knox.permission.KNOX_BLUETOOTH"

.field public static final USES_POLICY_MDM_BROWSER_PROXY:I = 0x43

.field public static final USES_POLICY_MDM_BROWSER_PROXY_TAG:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.BROWSER_PROXY,com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS:I = 0x2a

.field public static final USES_POLICY_MDM_BROWSER_SETTINGS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_BROWSER_SETTINGS,com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

.field public static final USES_POLICY_MDM_CALLING:I = 0x25

.field public static final USES_POLICY_MDM_CALLING_TAG:Ljava/lang/String; = "android.permission.sec.MDM_CALLING"

.field public static final USES_POLICY_MDM_CERTIFICATE_PERMISSION:I = 0x32

.field public static final USES_POLICY_MDM_CERTIFICATE_PERMISSION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_CERTIFICATE,com.samsung.android.knox.permission.KNOX_CERTIFICATE"

.field public static final USES_POLICY_MDM_DATE_TIME:I = 0x2b

.field public static final USES_POLICY_MDM_DATE_TIME_TAG:Ljava/lang/String; = "android.permission.sec.MDM_DATE_TIME,com.samsung.android.knox.permission.KNOX_DATE_TIME"

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY:I = 0x1d

.field public static final USES_POLICY_MDM_DEVICE_INVENTORY_TAG:Ljava/lang/String; = "android.permission.sec.MDM_INVENTORY,com.samsung.android.knox.permission.KNOX_INVENTORY"

.field public static final USES_POLICY_MDM_DUAL_SIM:I = 0x3b

.field public static final USES_POLICY_MDM_DUAL_SIM_TAG:Ljava/lang/String; = "android.permission.sec.MDM_DUAL_SIM,com.samsung.android.knox.permission.KNOX_DUAL_SIM"

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT:I = 0x26

.field public static final USES_POLICY_MDM_EMAIL_ACCOUNT_TAG:Ljava/lang/String; = "android.permission.sec.MDM_EMAIL,com.samsung.android.knox.permission.KNOX_EMAIL"

.field public static final USES_POLICY_MDM_ENTERPRISE_CONTAINER:I = 0x3c

.field public static final USES_POLICY_MDM_ENTERPRISE_CONTAINER_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_CONTAINER,com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN:I = 0x2e

.field public static final USES_POLICY_MDM_ENTERPRISE_DEVICE_ADMIN_TAG:Ljava/lang/String; = "android.permission.sec.ENTERPRISE_DEVICE_ADMIN,com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

.field public static final USES_POLICY_MDM_ENTERPRISE_ISL:I = 0x3a

.field public static final USES_POLICY_MDM_ENTERPRISE_ISL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_ISL"

.field public static final USES_POLICY_MDM_ENTERPRISE_SSO:I = 0x67

.field public static final USES_POLICY_MDM_ENTERPRISE_SSO_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_SSO"

.field public static final USES_POLICY_MDM_ENTERPRISE_VPN:I = 0x2c

.field public static final USES_POLICY_MDM_ENTERPRISE_VPN_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ENTERPRISE_VPN"

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT:I = 0x1e

.field public static final USES_POLICY_MDM_EXCHANGE_ACCOUNT_TAG:Ljava/lang/String; = "android.permission.sec.MDM_EXCHANGE,com.samsung.android.knox.permission.KNOX_EXCHANGE"

.field public static final USES_POLICY_MDM_FIREWALL:I = 0x2d

.field public static final USES_POLICY_MDM_FIREWALL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_FIREWALL,com.samsung.android.knox.permission.KNOX_FIREWALL"

.field public static final USES_POLICY_MDM_GEOFENCING:I = 0x36

.field public static final USES_POLICY_MDM_GEOFENCING_TAG:Ljava/lang/String; = "android.permission.sec.MDM_GEOFENCING,com.samsung.android.knox.permission.KNOX_GEOFENCING"

.field public static final USES_POLICY_MDM_GLOBALPROXY:I = 0x60

.field public static final USES_POLICY_MDM_GLOBALPROXY_TAG:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL:I = 0x22

.field public static final USES_POLICY_MDM_HARDWARE_CONTROL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_HW_CONTROL,com.samsung.android.knox.permission.KNOX_HW_CONTROL"

.field public static final USES_POLICY_MDM_KIOSK_MODE:I = 0x30

.field public static final USES_POLICY_MDM_KIOSK_MODE_TAG:Ljava/lang/String; = "android.permission.sec.MDM_KIOSK_MODE,com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

.field public static final USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS:I = 0x46

.field public static final USES_POLICY_MDM_KNOX_ACTIVATE_DEVICE_PERMISSIONS_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS,com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

.field public static final USES_POLICY_MDM_KNOX_ATTESTATION:I = 0x42

.field public static final USES_POLICY_MDM_KNOX_ATTESTATION_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_ATTESTATION,com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

.field public static final USES_POLICY_MDM_LDAP_SETTINGS:I = 0x34

.field public static final USES_POLICY_MDM_LDAP_SETTINGS_TAG:Ljava/lang/String; = "android.permission.sec.MDM_LDAP,com.samsung.android.knox.permission.KNOX_LDAP"

.field public static final USES_POLICY_MDM_LICENSE_LOG:I = 0x3e

.field public static final USES_POLICY_MDM_LICENSE_LOG_TAG:Ljava/lang/String; = "android.permission.sec.MDM_LICENSE_LOG,com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

.field public static final USES_POLICY_MDM_LOCATION:I = 0x24

.field public static final USES_POLICY_MDM_LOCATION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_LOCATION,com.samsung.android.knox.permission.KNOX_LOCATION"

.field public static final USES_POLICY_MDM_LOCKSCREEN:I = 0x37

.field public static final USES_POLICY_MDM_LOCKSCREEN_TAG:Ljava/lang/String; = "android.permission.sec.MDM_LOCKSCREEN,com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

.field public static final USES_POLICY_MDM_MULTI_USER_MGMT:I = 0x3f

.field public static final USES_POLICY_MDM_MULTI_USER_MGMT_TAG:Ljava/lang/String; = "android.permission.sec.MDM_MULTI_USER_MGMT,com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION:I = 0x29

.field public static final USES_POLICY_MDM_PHONE_RESTRICTION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_PHONE_RESTRICTION,com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

.field public static final USES_POLICY_MDM_RCP_SYNC_MGMT:I = 0x47

.field public static final USES_POLICY_MDM_RCP_SYNC_MGMT_TAG:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final USES_POLICY_MDM_REMOTE_CONTROL:I = 0x2f

.field public static final USES_POLICY_MDM_REMOTE_CONTROL_TAG:Ljava/lang/String; = "android.permission.sec.MDM_REMOTE_CONTROL,com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

.field public static final USES_POLICY_MDM_RESTRICTION:I = 0x23

.field public static final USES_POLICY_MDM_RESTRICTION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_RESTRICTION,com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

.field public static final USES_POLICY_MDM_ROAMING:I = 0x1f

.field public static final USES_POLICY_MDM_ROAMING_TAG:Ljava/lang/String; = "android.permission.sec.MDM_ROAMING,com.samsung.android.knox.permission.KNOX_ROAMING"

.field public static final USES_POLICY_MDM_SEANDROID_PERMISSION:I = 0x39

.field public static final USES_POLICY_MDM_SEANDROID_PERMISSION_TAG:Ljava/lang/String; = "android.permission.sec.MDM_SEANDROID"

.field public static final USES_POLICY_MDM_SECURITY:I = 0x21

.field public static final USES_POLICY_MDM_SECURITY_TAG:Ljava/lang/String; = "android.permission.sec.MDM_SECURITY,com.samsung.android.knox.permission.KNOX_SECURITY"

.field public static final USES_POLICY_MDM_SMARTCARD:I = 0x3d

.field public static final USES_POLICY_MDM_SMARTCARD_TAG:Ljava/lang/String; = "android.permission.sec.MDM_SMARTCARD"

.field public static final USES_POLICY_MDM_SSO:I = 0x52

.field public static final USES_POLICY_MDM_SSO_TAG:Ljava/lang/String; = "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

.field public static final USES_POLICY_MDM_VPN:I = 0x27

.field public static final USES_POLICY_MDM_VPN_TAG:Ljava/lang/String; = "android.permission.sec.MDM_VPN,com.samsung.android.knox.permission.KNOX_VPN"

.field public static final USES_POLICY_MDM_WIFI:I = 0x20

.field public static final USES_POLICY_MDM_WIFI_TAG:Ljava/lang/String; = "android.permission.sec.MDM_WIFI,com.samsung.android.knox.permission.KNOX_WIFI"

.field public static sKnownPolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNewToOldPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOldToNewPermissionMapping:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPoliciesDisplayOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static sRevKnownPolicies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final timaversion:Z


# instance fields
.field mAuthorized:Z

.field mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

.field mLicenseExpiryTime:J

.field final mReceiver:Landroid/content/pm/ResolveInfo;

.field mRequestedPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mUsesPolicies:Ljava/util/BitSet;

.field mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "3.0"

    const-string/jumbo v1, "ro.config.timaversion"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->timaversion:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_APP_MGMT,com.samsung.android.knox.permission.KNOX_APP_MGMT"

    const/16 v3, 0x1b

    const v4, 0x104079f

    const v5, 0x10406a4

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_BLUETOOTH,com.samsung.android.knox.permission.KNOX_BLUETOOTH"

    const/16 v3, 0x1c

    const v4, 0x10407a2

    const v5, 0x10406a7

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_INVENTORY,com.samsung.android.knox.permission.KNOX_INVENTORY"

    const/16 v3, 0x1d

    const v4, 0x10407ae

    const v5, 0x10406b3

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_EXCHANGE,com.samsung.android.knox.permission.KNOX_EXCHANGE"

    const/16 v3, 0x1e

    const v4, 0x10407b9

    const v5, 0x10406be

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ROAMING,com.samsung.android.knox.permission.KNOX_ROAMING"

    const/16 v3, 0x1f

    const v4, 0x10407ce

    const v5, 0x10406d7

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_WIFI,com.samsung.android.knox.permission.KNOX_WIFI"

    const/16 v3, 0x20

    const v4, 0x10407df

    const v5, 0x10406e8

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_SECURITY,com.samsung.android.knox.permission.KNOX_SECURITY"

    const/16 v3, 0x21

    const v4, 0x10407d5

    const v5, 0x10406de

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_HW_CONTROL,com.samsung.android.knox.permission.KNOX_HW_CONTROL"

    const/16 v3, 0x22

    const v4, 0x10407bd

    const v5, 0x10406c2

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_RESTRICTION,com.samsung.android.knox.permission.KNOX_RESTRICTION_MGMT"

    const/16 v3, 0x23

    const v4, 0x10407cd

    const v5, 0x10406d6

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_LOCATION,com.samsung.android.knox.permission.KNOX_LOCATION"

    const/16 v3, 0x24

    const v4, 0x10407c7

    const v5, 0x10406d0

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_CALLING"

    const/16 v3, 0x25

    const v4, 0x10407a6

    const v5, 0x10406ab

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_EMAIL,com.samsung.android.knox.permission.KNOX_EMAIL"

    const/16 v3, 0x26

    const v4, 0x10407b2

    const v5, 0x10406b7

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_VPN,com.samsung.android.knox.permission.KNOX_VPN"

    const/16 v3, 0x27

    const v4, 0x10407de

    const v5, 0x10406e7

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_APN,com.samsung.android.knox.permission.KNOX_APN"

    const/16 v3, 0x28

    const v4, 0x104079d

    const v5, 0x10406a2

    invoke-direct {v1, v3, v2, v4, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_PHONE_RESTRICTION,com.samsung.android.knox.permission.KNOX_PHONE_RESTRICTION"

    const v3, 0x10406d2

    const v4, 0x10407c9

    const/16 v5, 0x29

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_BROWSER_SETTINGS,com.samsung.android.knox.permission.KNOX_BROWSER_SETTINGS"

    const/16 v5, 0x2a

    const v6, 0x10407a5

    const v7, 0x10406aa

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.mdm.permission.BROWSER_PROXY,com.samsung.android.knox.permission.KNOX_BROWSER_PROXY"

    const/16 v5, 0x43

    const v6, 0x10407a4

    const v7, 0x10406a9

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_DATE_TIME,com.samsung.android.knox.permission.KNOX_DATE_TIME"

    const/16 v5, 0x2b

    const v6, 0x10407ac

    const v7, 0x10406b1

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_VPN"

    const/16 v5, 0x2c

    const v6, 0x10407b7

    const v7, 0x10406bc

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.KNOX_GENERIC_VPN,com.samsung.android.knox.permission.KNOX_VPN_GENERIC"

    const/16 v5, 0x44

    const v6, 0x1040793

    const v7, 0x1040698

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.KNOX_CONTAINER_VPN,com.samsung.android.knox.permission.KNOX_VPN_CONTAINER"

    const/16 v5, 0x45

    const v6, 0x104078d

    const v7, 0x1040692

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_FIREWALL,com.samsung.android.knox.permission.KNOX_FIREWALL"

    const/16 v5, 0x2d

    const v6, 0x10407ba

    const v7, 0x10406bf

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.ENTERPRISE_DEVICE_ADMIN,com.samsung.android.knox.permission.KNOX_ENTERPRISE_DEVICE_ADMIN"

    const/16 v5, 0x2e

    const v6, 0x10407b3

    const v7, 0x10406b8

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_REMOTE_CONTROL,com.samsung.android.knox.permission.KNOX_REMOTE_CONTROL"

    const/16 v5, 0x2f

    const v6, 0x10407cc

    const v7, 0x10406d5

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_KIOSK_MODE,com.samsung.android.knox.permission.KNOX_KIOSK_MODE"

    const/16 v5, 0x30

    const v6, 0x10407c0

    const v7, 0x10406c5

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_APP_PERMISSION_MGMT"

    const/16 v5, 0x31

    const v6, 0x10407a0

    const v7, 0x10406a5

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_CERTIFICATE,com.samsung.android.knox.permission.KNOX_CERTIFICATE"

    const/16 v5, 0x32

    const v6, 0x10407a9

    const v7, 0x10406ae

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_AUDIT_LOG,com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    const/16 v5, 0x33

    const v6, 0x10407a1

    const v7, 0x10406a6

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_CONTAINER,com.samsung.android.knox.permission.KNOX_CONTAINER"

    const/16 v5, 0x3c

    const v6, 0x10407b4

    const v7, 0x10406b9

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_SEANDROID"

    const/16 v5, 0x39

    const v6, 0x10407d0

    const v7, 0x10406d9

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_LDAP,com.samsung.android.knox.permission.KNOX_LDAP"

    const/16 v5, 0x34

    const v6, 0x10407c5

    const v7, 0x10406ca

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_APP_BACKUP"

    const/16 v5, 0x35

    const v6, 0x104079e

    const v7, 0x10406a3

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_LOCKSCREEN,com.samsung.android.knox.permission.KNOX_LOCKSCREEN"

    const/16 v5, 0x37

    const v6, 0x10407c6

    const v7, 0x10406cb

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_DUAL_SIM,com.samsung.android.knox.permission.KNOX_DUAL_SIM"

    const/16 v5, 0x3b

    const v6, 0x10407b0

    const v7, 0x10406b5

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.mdm.permission.MDM_SSO,com.samsung.android.knox.permission.KNOX_SSO"

    const/16 v5, 0x52

    const v6, 0x10407d1

    const v7, 0x10406da

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_ISL"

    const/16 v5, 0x3a

    const v6, 0x10407b5

    const v7, 0x10406ba

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_GEOFENCING,com.samsung.android.knox.permission.KNOX_GEOFENCING"

    const/16 v5, 0x36

    const v6, 0x10407bb

    const v7, 0x10406c0

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_SMARTCARD"

    const/16 v5, 0x3d

    const v6, 0x10407d8

    const v7, 0x10406e1

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_LICENSE_LOG,com.samsung.android.knox.permission.KNOX_LICENSE_LOG"

    const/16 v5, 0x3e

    const v6, 0x10407b1

    const v7, 0x10406b6

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_MULTI_USER_MGMT,com.samsung.android.knox.permission.KNOX_MULTI_USER_MGMT"

    const/16 v5, 0x3f

    const v6, 0x10407c8

    const v7, 0x10406d1

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ANALYTICS"

    const/16 v5, 0x40

    const v6, 0x104079c

    const v7, 0x10406a1

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_BLUETOOTH_SECUREMODE,com.samsung.android.knox.permission.KNOX_BLUETOOTH_SECUREMODE"

    const/16 v5, 0x41

    const v6, 0x10407a3

    const v7, 0x10406a8

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ATTESTATION,com.samsung.android.knox.permission.KNOX_REMOTE_ATTESTATION"

    const/16 v5, 0x42

    const v6, 0x10407c2

    const v7, 0x10406c7

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RCP_SYNC_MGMT,com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    const/16 v5, 0x47

    const v6, 0x10407c3

    const v7, 0x10406c8

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS,com.samsung.android.knox.permission.KNOX_ACTIVATE_DEVICE_PERMISSIONS_INTERNAL"

    const/16 v5, 0x46

    const v6, 0x10407c1

    const v7, 0x10406c6

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_DEACTIVATE_LICENSE"

    const/16 v5, 0x48

    const v6, 0x10407ad

    const v7, 0x10406b2

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS,com.samsung.android.knox.permission.KNOX_SEAMS_MGMT"

    const/16 v5, 0x49

    const v6, 0x10407d3

    const v7, 0x10406dc

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SEAMS_SEPOLICY_INTERNAL"

    const v5, 0x10406dd

    const v6, 0x10407d4

    const/16 v7, 0x4a

    invoke-direct {v1, v7, v2, v6, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_RESTRICTION,com.samsung.android.knox.permission.KNOX_ADVANCED_RESTRICTION"

    const/16 v7, 0x4b

    const v8, 0x10407c4

    const v9, 0x10406c9

    invoke-direct {v1, v7, v2, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SETTING,com.samsung.android.knox.permission.KNOX_CUSTOM_SETTING"

    const/16 v7, 0x4e

    const v8, 0x1040790

    const v9, 0x1040695

    invoke-direct {v1, v7, v2, v8, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SYSTEM,com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    const v7, 0x1040696

    const v8, 0x1040791

    const/16 v9, 0x4f

    invoke-direct {v1, v9, v2, v8, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_SEALEDMODE,com.samsung.android.knox.permission.KNOX_CUSTOM_SEALEDMODE"

    const v9, 0x1040693

    const v10, 0x104078e

    const/16 v11, 0x50

    invoke-direct {v1, v11, v2, v10, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_PROKIOSK,com.samsung.android.knox.permission.KNOX_CUSTOM_PROKIOSK"

    const/16 v11, 0x58

    invoke-direct {v1, v11, v2, v10, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.CUSTOM_RUBENS_FEATURES"

    const/16 v9, 0x54

    const v10, 0x104077c

    const v11, 0x1040681

    invoke-direct {v1, v9, v2, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING,com.samsung.android.knox.permission.KNOX_EBILLING"

    const v9, 0x1040684

    const v10, 0x104077f

    const/16 v11, 0x55

    invoke-direct {v1, v11, v2, v10, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CCM,com.samsung.android.knox.permission.KNOX_CCM_KEYSTORE"

    const/16 v11, 0x4c

    const v12, 0x10407a7

    const v13, 0x10406ac

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_UCM_ESE,com.samsung.android.knox.permission.KNOX_UCM_ESE_MGMT"

    const/16 v11, 0x5a

    const v12, 0x10407dc

    const v13, 0x10406e5

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_UCM_OTHER,com.samsung.android.knox.permission.KNOX_UCM_OTHER_MGMT"

    const/16 v11, 0x5b

    const v12, 0x10407dd

    const v13, 0x10406e6

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_UCM_PLUGIN,com.samsung.android.knox.permission.KNOX_UCM_PLUGIN_SERVICE"

    const/16 v11, 0x5c

    const v12, 0x104081a

    const v13, 0x1040723

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_UCM_PRIVILEGED,com.samsung.android.knox.permission.KNOX_UCM_PRIVILEGED_MGMT"

    const/16 v11, 0x5f

    const v12, 0x10407db

    const v13, 0x10406e4

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_KEYSTORE,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE"

    const/16 v11, 0x4d

    const v12, 0x10407be

    const v13, 0x10406c3

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_KEYSTORE_PER_APP,com.samsung.android.knox.permission.KNOX_TIMA_KEYSTORE_PER_APP"

    const/16 v11, 0x5e

    const v12, 0x10407bf

    const v13, 0x10406c4

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CERTENROLL,com.samsung.android.knox.permission.KNOX_CERTIFICATE_ENROLLMENT"

    const/16 v11, 0x51

    const v12, 0x10407d2

    const v13, 0x10406db

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_TRUSTED_PINPAD"

    const/16 v11, 0x53

    const v12, 0x10407da

    const v13, 0x10406e3

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_DLP,com.samsung.android.knox.permission.KNOX_DLP_MGMT"

    const/16 v11, 0x56

    const v12, 0x10407ab

    const v13, 0x10406b0

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.permission.KNOX_SDP,com.samsung.android.knox.permission.KNOX_SENSITIVE_DATA_PROTECTION"

    const/16 v11, 0x59

    const v12, 0x10407cf

    const v13, 0x10406d8

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_GLOBALPROXY"

    const/16 v11, 0x60

    const v12, 0x10407bc

    const v13, 0x10406c1

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CERT_PROVISIONING"

    const/16 v11, 0x61

    const v12, 0x10407a8

    const v13, 0x10406ad

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CLIPBOARD"

    const/16 v11, 0x62

    const v12, 0x10407aa

    const v13, 0x10406af

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_APP_MGMT"

    const/16 v11, 0x63

    const v12, 0x104078b

    const v13, 0x1040690

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_ADVANCED_SECURITY"

    const/16 v11, 0x64

    const v12, 0x104078c

    const v13, 0x1040691

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_NPA"

    const/16 v11, 0x65

    const v12, 0x1040794

    const v13, 0x1040699

    invoke-direct {v1, v11, v2, v12, v13}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_ENTERPRISE_BILLING_NOMDM,com.samsung.android.knox.permission.KNOX_EBILLING_NOMDM"

    const/16 v11, 0x66

    invoke-direct {v1, v11, v2, v10, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "android.permission.sec.MDM_ENTERPRISE_SSO"

    const/16 v9, 0x67

    const v10, 0x10407b6

    const v11, 0x10406bb

    invoke-direct {v1, v9, v2, v10, v11}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    const/16 v9, 0x68

    invoke-direct {v1, v9, v2, v6, v5}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DEX"

    const/16 v5, 0x69

    const v6, 0x10407af

    const v9, 0x10406b4

    invoke-direct {v1, v5, v2, v6, v9}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_CUSTOM_DEX"

    const/16 v5, 0x6a

    invoke-direct {v1, v5, v2, v8, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_UCM_MGMT"

    const/16 v5, 0x6b

    const v6, 0x1040819

    const v7, 0x1040722

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    const/16 v5, 0x6c

    const v6, 0x1040792

    const v7, 0x1040697

    invoke-direct {v1, v5, v2, v6, v7}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    new-instance v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    const-string v2, "com.samsung.android.knox.permission.KNOX_SIM_RESTRICTION"

    const/16 v5, 0x6e

    invoke-direct {v1, v5, v2, v4, v3}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    iget v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    iget-object v4, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    iget v5, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v2, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    aget-object v5, v3, v0

    const/4 v6, 0x1

    aget-object v7, v3, v6

    invoke-virtual {v4, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    aget-object v5, v3, v6

    aget-object v6, v3, v0

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/app/admin/ProxyDeviceAdminInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getReceiver()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    goto/16 :goto_3

    :cond_0
    invoke-virtual {p2}, Landroid/app/admin/ProxyDeviceAdminInfo;->getRequestedPermissions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v2, v1

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_1
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    :cond_3
    const-string v4, "EnterpriseDeviceAdminInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag under uses-policies of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto/16 :goto_0

    :cond_4
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    new-instance v0, Landroid/app/admin/DeviceAdminInfo;

    invoke-direct {v0, p1, p2}, Landroid/app/admin/DeviceAdminInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    iput-object p2, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    const-string v0, "com.android.email"

    iget-object v1, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->parseRequestedPermissions()Ljava/util/List;

    :cond_0
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    sget-object v0, Landroid/content/pm/ResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    return-void
.end method

.method private readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    move v0, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump(Landroid/util/Printer;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Receiver:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/ResolveInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    return-void
.end method

.method public getActivityInfo()Landroid/content/pm/ActivityInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getLicenseExpiry()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    return-wide v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReceiver()Landroid/content/pm/ResolveInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public getReceiverName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getReceiverName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestedPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object v0
.end method

.method public getTagForPolicy(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x1b

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->getTagForPolicy(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sRevKnownPolicies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget-object v0, v0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsedPolicies()Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getUsedPolicies()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    new-instance v4, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v5, v5, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget-object v6, v6, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->tag:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v7, v7, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->label:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;

    iget v8, v8, Landroid/app/admin/DeviceAdminInfo$PolicyInfo;->description:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;-><init>(ILjava/lang/String;II)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_1
    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sPoliciesDisplayOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;

    iget v4, v3, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo$PolicyInfo;->ident:I

    invoke-virtual {p0, v4}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->usesPolicy(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method public isAuthorized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    return v0
.end method

.method public isProxy()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isProxy()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->isVisible()Z

    move-result v0

    return v0
.end method

.method public loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public parseRequestedPermissions()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, v4

    :try_start_0
    new-instance v0, Landroid/content/res/AssetManager;

    invoke-direct {v0}, Landroid/content/res/AssetManager;-><init>()V

    move-object v5, v0

    invoke-virtual {v5, v2}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const-string v6, "AndroidManifest.xml"

    invoke-virtual {v5, v0, v6}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    move-object v3, v6

    goto :goto_0

    :cond_0
    const-string v6, "EnterpriseDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed adding asset path:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v6, "EnterpriseDeviceAdminInfo"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to read AndroidManifest.xml of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    if-nez v3, :cond_2

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :cond_1
    return-object v4

    :cond_2
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v6, v0

    invoke-virtual {v6}, Landroid/util/DisplayMetrics;->setToDefaults()V

    move-object v7, v4

    :try_start_1
    new-instance v0, Landroid/content/res/Resources;

    invoke-direct {v0, v5, v6, v4}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    move-object v8, v3

    :goto_2
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    move v10, v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v9, v11, :cond_3

    if-eq v10, v12, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    :goto_3
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11

    move v10, v11

    if-eq v11, v12, :cond_b

    const/4 v11, 0x3

    if-ne v10, v11, :cond_4

    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v13

    if-le v13, v9, :cond_b

    :cond_4
    if-eq v10, v11, :cond_a

    const/4 v11, 0x4

    if-ne v10, v11, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    const-string/jumbo v13, "uses-permission"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    sget-object v13, Lcom/android/internal/R$styleable;->AndroidManifestUsesPermission:[I

    invoke-virtual {v0, v8, v13}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    move-object v7, v13

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/content/res/TypedArray;->getNonResourceString(I)Ljava/lang/String;

    move-result-object v13

    move-object v14, v13

    sget-object v15, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    goto :goto_4

    :cond_6
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v15, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    :cond_7
    :goto_4
    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v12, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_8

    iget-object v15, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v15, v4}, Ljava/util/BitSet;->set(I)V

    if-eqz v13, :cond_8

    iget-object v4, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v4, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v13}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v4, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_9
    nop

    :cond_a
    :goto_5
    const/4 v4, 0x0

    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_b
    if-eqz v7, :cond_c

    :goto_6
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_7

    :catchall_0
    move-exception v0

    goto/16 :goto_b

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    :goto_7
    invoke-interface {v3}, Landroid/content/res/XmlResourceParser;->close()V

    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/content/res/AssetManager;->close()V

    :cond_d
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/license/EnterpriseLicenseManager;

    move-result-object v0

    move-object v4, v0

    :try_start_3
    iget-object v0, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0}, Landroid/app/admin/DeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->getELMPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object v10, v9

    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sOldToNewPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    goto :goto_9

    :cond_e
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sNewToOldPermissionMapping:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    :cond_f
    :goto_9
    sget-object v11, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->sKnownPolicies:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    if-eqz v11, :cond_10

    iget-object v12, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/util/BitSet;->set(I)V

    iget-object v12, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_10

    iget-object v12, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_10
    goto :goto_8

    :cond_11
    goto :goto_a

    :catch_2
    move-exception v0

    const-string v8, "EnterpriseDeviceAdminInfo"

    const-string v9, "Failed to get ELM permissions"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    iget-object v0, v1, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mRequestedPermissions:Ljava/util/List;

    return-object v0

    :goto_b
    if-eqz v7, :cond_12

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_12
    throw v0
.end method

.method public readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->readPoliciesFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mAuthorized:Z

    return-void
.end method

.method public setLicenseExpiry(J)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mLicenseExpiryTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceAdminInfo{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public usesMDMPolicy()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public usesPolicy(I)Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->usesPolicy(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mDeviceAdminInfo:Landroid/app/admin/DeviceAdminInfo;

    invoke-virtual {v0, p1}, Landroid/app/admin/DeviceAdminInfo;->writePoliciesToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mReceiver:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->mUsesPolicies:Ljava/util/BitSet;

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceAdminInfo;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    return-void
.end method
