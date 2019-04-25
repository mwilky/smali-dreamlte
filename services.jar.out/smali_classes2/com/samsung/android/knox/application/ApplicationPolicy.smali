.class public Lcom/samsung/android/knox/application/ApplicationPolicy;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# static fields
.field public static final ACTION_APPLICATION_FOCUS_CHANGE:Ljava/lang/String; = "com.samsung.android.knox.intent.action.APPLICATION_FOCUS_CHANGE"

.field public static final ACTION_EDM_FORCE_LAUNCHER_REFRESH_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_FORCE_LAUNCHER_REFRESH_INTERNAL"

.field public static final ACTION_EDM_UNINSTALL_STATUS_INTERNAL:Ljava/lang/String; = "com.samsung.android.knox.intent.action.EDM_UNINSTALL_STATUS_INTERNAL"

.field public static final ACTION_PREVENT_APPLICATION_START:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PREVENT_APPLICATION_START"

.field public static final ACTION_PREVENT_APPLICATION_STOP:Ljava/lang/String; = "com.samsung.android.knox.intent.action.PREVENT_APPLICATION_STOP"

.field public static final APPLICATION_INSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_INSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final APPLICATION_UNINSTALLATION_MODE_ALLOW:I = 0x1

.field public static final APPLICATION_UNINSTALLATION_MODE_DISALLOW:I = 0x0

.field public static final DEFAULT_TYPE_AUDIO:Ljava/lang/String; = "audio/*"

.field public static final DEFAULT_TYPE_PDF:Ljava/lang/String; = "application/pdf"

.field public static final DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

.field public static final DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

.field public static final ERROR_CALLER_TARGET_SDK_NOT_SUPPORTED:I = -0x4

.field public static final ERROR_INVALID_INPUT:I = -0x1

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_PROXY_NOT_INSTALLED:I = -0x5

.field public static final ERROR_PROXY_NO_ADMIN_RECEIVER:I = -0x6

.field public static final ERROR_SIGNATURE_MISMATCH:I = -0x3

.field public static final ERROR_UNKNOWN:I = -0x2

.field public static final EXTRA_ADMIN_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ADMIN_PACKAGE_NAME"

.field public static final EXTRA_APPLICATION_FOCUS_COMPONENT_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_COMPONENT_NAME"

.field public static final EXTRA_APPLICATION_FOCUS_STATUS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_FOCUS_STATUS"

.field public static final EXTRA_APPLICATION_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.APPLICATION_PACKAGE_NAME"

.field public static final EXTRA_ERROR_CLASS:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_CLASS"

.field public static final EXTRA_ERROR_REASON:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_REASON"

.field public static final EXTRA_ERROR_TYPE:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.ERROR_TYPE"

.field public static final EXTRA_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.PACKAGE_NAME"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "com.samsung.android.knox.intent.extra.USER_ID"

.field public static final FLAG_ALLOW_PROXY_FOR_PFW:I = 0x1

.field public static final LAUNCHER_TASK:Landroid/content/Intent;

.field public static final NOTIFICATION_MODE_BLOCK_ALL:I = 0x2

.field public static final NOTIFICATION_MODE_BLOCK_TEXT:I = 0x3

.field public static final NOTIFICATION_MODE_BLOCK_TEXT_AND_SOUND:I = 0x4

.field public static final OPEN_DIALER_TASK:Landroid/content/Intent;

.field public static final OPEN_PDF_TASK:Landroid/content/Intent;

.field public static final OPEN_URL_TASK:Landroid/content/Intent;

.field public static final PERMISSION_POLICY_STATE_DEFAULT:I = 0x0

.field public static final PERMISSION_POLICY_STATE_DENY:I = 0x2

.field public static final PERMISSION_POLICY_STATE_GRANT:I = 0x1

.field public static final PKGINFO_SIGNATURE:Ljava/lang/String; = "package-app-signature"

.field public static final PKGINFO_VERSION:Ljava/lang/String; = "package-app-version-code"

.field public static final PLAY_AUDIO_TASK:Landroid/content/Intent;

.field public static final PLAY_VIDEO_TASK:Landroid/content/Intent;

.field public static final PROXY_FLAGS:Ljava/lang/String; = "proxy-flags"

.field public static final SMS_MMS_TASK:Landroid/content/Intent;

.field private static TAG:Ljava/lang/String; = null

.field public static final TYPE_APPROVED_APP_INSTALLER:I = 0x1

.field public static final TYPE_CALL_RECORDING:I = 0x3

.field public static final TYPE_EXTERNAL_STORAGE_ACCESS:I = 0x2


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private mDPMService:Landroid/app/admin/IDevicePolicyManager;

.field private mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

.field private mService:Lcom/samsung/android/knox/application/IApplicationPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ApplicationPolicy"

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createSmsMmsTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->SMS_MMS_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createLauncherTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->LAUNCHER_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenURLTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_URL_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenPDFTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_PDF_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createOpenDialerTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->OPEN_DIALER_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAudioTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_AUDIO_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createVideoTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->PLAY_VIDEO_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistActivityTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_ACTIVITY_TASK:Landroid/content/Intent;

    invoke-static {}, Lcom/samsung/android/knox/application/ApplicationPolicy;->createAssistServiceTask()Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->DEVICE_ASSISTANCE_SERVICE_TASK:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    iput-object p2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private checkPathAccessSecured(Ljava/lang/String;)V
    .locals 9

    :try_start_0
    const-string v0, "/sdcard/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    const-string v5, "ApplicationPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application installed from "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "a insecure file path"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Llibcore/io/Libcore;->os:Llibcore/io/Os;

    invoke-interface {v0, p1}, Llibcore/io/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->S_IWOTH:I

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/system/StructStat;->st_mode:I

    and-int/2addr v2, v1

    if-ne v2, v1, :cond_1

    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "ApplicationPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Application installed from "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "a insecure file path"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static createAssistActivityTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ASSIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAssistServiceTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.voice.VoiceInteractionService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static createAudioTask()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "audio.mp3"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createLauncherTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenDialerTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "tel:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenPDFTask()Landroid/content/Intent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    const-string v2, "file.pdf"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/pdf"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createOpenURLTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "http://"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createSmsMmsTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "smsto:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method private static createVideoTask()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-nez p2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object p2, v1

    return-object p2

    :cond_0
    if-nez p1, :cond_1

    return-object p2

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/application/AppControlInfo;

    iget-object v3, v2, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v2, Lcom/samsung/android/knox/application/AppControlInfo;->entries:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_2
    goto :goto_0

    :cond_3
    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p2
.end method

.method private getDPMService()Landroid/app/admin/IDevicePolicyManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    if-nez v0, :cond_0

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    return-object v0
.end method

.method private getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    return-object v0
.end method

.method private getService()Lcom/samsung/android/knox/application/IApplicationPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    if-nez v0, :cond_0

    const-string v0, "application_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    return-object v0
.end method

.method private installOrUpdateApplicationInternal(Ljava/lang/String;Z)Z
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_c

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->checkPathAccessSecured(Ljava/lang/String;)V

    const-string v3, "/data"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object p1, v3

    const/4 v1, 0x1

    :cond_0
    if-nez p1, :cond_3

    const/4 v1, 0x0

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "failed to copy apk from public dir"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    if-eqz v1, :cond_2

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    sget-object v5, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete temporary file, SecurityException occurred"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    return v2

    :cond_3
    :try_start_3
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v4, 0x10000000

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v4

    nop

    :try_start_5
    iget-object v4, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v5, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v4, v5, p1, p2, v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;ZLandroid/os/ParcelFileDescriptor;)Z

    move-result v4
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    sget-object v5, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed to close file descriptor"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    :goto_3
    nop

    :goto_4
    if-eqz v1, :cond_5

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed to delete temporary file, SecurityException occurred"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return v4

    :catch_4
    move-exception v4

    :try_start_8
    sget-object v5, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "File path provided doesn\'t exist"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    if-eqz v0, :cond_6

    :try_start_9
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    :catch_5
    move-exception v5

    sget-object v6, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v7, "Failed to close file descriptor"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_6
    :goto_6
    nop

    :goto_7
    if-eqz v1, :cond_7

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7

    :try_start_a
    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_8

    :catch_6
    move-exception v6

    sget-object v7, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v8, "Failed to delete temporary file, SecurityException occurred"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_8
    return v2

    :catchall_0
    move-exception v2

    goto :goto_c

    :catch_7
    move-exception v3

    :try_start_b
    sget-object v4, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed talking with application policy"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v0, :cond_8

    :try_start_c
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_9

    :catch_8
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_8
    :goto_9
    nop

    :goto_a
    if-eqz v1, :cond_d

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_9

    :try_start_d
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_b

    :catch_9
    move-exception v4

    sget-object v5, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete temporary file, SecurityException occurred"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_b
    goto :goto_10

    :goto_c
    nop

    if-eqz v0, :cond_a

    :try_start_e
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_d

    :catch_a
    move-exception v3

    sget-object v4, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v5, "Failed to close file descriptor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_a
    :goto_d
    nop

    :goto_e
    if-eqz v1, :cond_b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_b

    :try_start_f
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/SecurityException; {:try_start_f .. :try_end_f} :catch_b

    goto :goto_f

    :catch_b
    move-exception v4

    sget-object v5, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete temporary file, SecurityException occurred"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_b
    :goto_f
    throw v2

    :cond_c
    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Invalid parameter - apkFilePath is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_10
    return v2
.end method


# virtual methods
.method public addAppPackageNameToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppPackageNameToWhiteList(Ljava/lang/String;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPackageNameToWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addAppPackageNameToWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, ".*"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppPackageNameToBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addAppPackageNameToWhiteList: failed to add .*"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPackageNameToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addAppPermissionToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppPermissionToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppPermissionToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppSignatureToBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppSignatureToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppSignatureToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addAppSignatureToWhiteList(Ljava/lang/String;Z)Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addAppSignatureToWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addAppSignatureToWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v1, "*"

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addAppSignatureToBlackList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addAppSignatureToWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppSignatureToWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addHomeShorcut!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addNewAdminActivationAppWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addNewAdminActivationAppWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->addNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed addNewAdminActivationAppWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToBatteryOptimizationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with ApplicationPolicy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x2

    return v1
.end method

.method public addPackageToBlackList(ILcom/samsung/android/knox/AppIdentity;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToBlackList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public addPackageToWhiteList(ILcom/samsung/android/knox/AppIdentity;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackageToWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackageToWhiteList(Lcom/samsung/android/knox/ContextInfo;ILcom/samsung/android/knox/AppIdentity;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public addPackagesToClearCacheBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToClearCacheWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToClearDataBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToClearDataWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToDisableClipboardBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToDisableClipboardWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToDisableClipboardWhiteList(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToDisableClipboardBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addPackagesToDisableClipboardWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addPackagesToDisableUpdateBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToDisableUpdateWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToDisableUpdateWhiteList(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPermissionControlPolicy.addPackagesToPermissionWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToDisableUpdateBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addPackagesToDisableUpdateWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addPackagesToFocusMonitoringList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToForceStopWhiteList(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToForceStopWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToPermissionWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToForceStopBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addPackagesToForceStopWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addPackagesToNotificationBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToNotificationWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToNotificationWhiteList(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToNotificationWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToNotificationWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToNotificationBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addPackagesToNotificationWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addPackagesToPreventStartBlackList(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public addPackagesToWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addPackagesToWidgetWhiteList(Ljava/util/List;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addPackagesToWidgetWhiteList with defaultBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v2, "ApplicationPolicy.addPackagesToWidgetWhiteList -> Adding Star in BlackList"

    invoke-static {v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "*"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->addPackagesToWidgetBlackList(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "ApplicationPolicy.addPackagesToWidgetWhiteList: failed to add *"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addPackagesToWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return v2
.end method

.method public addUsbDevicesForDefaultAccess(Ljava/lang/String;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.addUsbDevicesForDefaultAccess"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->addUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public applyRuntimePermissions(Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/AppIdentity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.applyRuntimePermissions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, -0x2

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "applyRuntimePermissions : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->applyRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;Ljava/util/List;I)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v2
.end method

.method public changeApplicationIcon(Ljava/lang/String;[B)Z
    .locals 4

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeApplicationIcon:packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.changeApplicationIcon"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    :try_start_0
    array-length v0, p2

    const/high16 v2, 0x100000

    if-le v0, v2, :cond_0

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeApplicationIcon: Icon size is too big :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationIcon(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_0
    nop

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return v1
.end method

.method public changeApplicationName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.changeApplicationName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->changeApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearAppPackageNameFromList()Z
    .locals 10

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearAppPackageNameFromList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppPackageNamesAllBlackLists()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppPackageNamesAllWhiteLists()Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    return v6

    :cond_0
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAllUniqueAdminPackageNames(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppPackageNameFromBlackList(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v4, 0x0

    :cond_1
    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {p0, v8}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v5, 0x0

    :cond_3
    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    const/4 v6, 0x1

    nop

    :cond_5
    return v6
.end method

.method public clearAppSignatureFromList()Z
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPermissionControlPolicy.clearAppSignatureFromList "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppSignaturesBlackList()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getAppSignaturesWhiteList()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    array-length v5, v0

    move v6, v2

    move v2, v4

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v7, v0, v2

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppSignatureFromBlackList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const/4 v6, 0x0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v6

    :cond_2
    if-eqz v1, :cond_5

    array-length v5, v1

    move v6, v3

    move v3, v4

    :goto_1
    if-ge v3, v5, :cond_4

    aget-object v7, v1, v3

    invoke-virtual {p0, v7}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removeAppSignatureFromWhiteList(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_3

    const/4 v6, 0x0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move v3, v6

    :cond_5
    if-eqz v2, :cond_6

    if-eqz v3, :cond_6

    const/4 v4, 0x1

    nop

    :cond_6
    return v4
.end method

.method public clearDisableClipboardBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisableClipboardWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisableUpdateBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableUpdateBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisableUpdateWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearDisableUpdateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearFocusMonitoringList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearNewAdminActivationAppWhiteList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearNewAdminActivationAppWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->clearNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed clearNewAdminActivationAppWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearPackagesFromDisableClipboardList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromDisableClipboardList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableClipboardBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableClipboardWhiteList()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public clearPackagesFromDisableUpdateList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromDisableUpdateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableUpdateBlackList()Z

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->clearDisableUpdateWhiteList()Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public clearPackagesFromForceStopList()Z
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPackagesFromForceStopList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromForceStopBlackList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromForceStopWhiteList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopBlackList(Ljava/util/List;)Z

    move-result v3

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromForceStopWhiteList(Ljava/util/List;)Z

    move-result v4

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v2
.end method

.method public clearPackagesFromNotificationList()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPermissionControlPolicy.clearPackagesFromNotificationList "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromNotificationBlackList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromNotificationWhiteList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromNotificationBlackList(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromNotificationWhiteList(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    nop

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v4
.end method

.method public clearPackagesFromWidgetList()Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPermissionControlPolicy.clearPackagesFromWidgetList "

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromWidgetBlackList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getPackagesFromWidgetWhiteList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromWidgetBlackList(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/application/ApplicationPolicy;->removePackagesFromWidgetWhiteList(Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v4, 0x1

    nop

    :cond_3
    return v4

    :cond_4
    :goto_0
    return v4
.end method

.method public clearPreventStartBlackList()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public clearUsbDevicesForDefaultAccess(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.clearUsbDevicesForDefaultAccess"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->clearUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public deleteHomeShortcut(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.deleteHomeShortcut"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->deleteHomeShortcut(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed deleteHomeShorcut!!!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableAndroidBrowser()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.disableAndroidBrowser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.android.browser"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.browser.provider"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set all browser as disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public disableAndroidMarket()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.disableAndroidMarket"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public disableVoiceDialer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.disableVoiceDialer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.android.voicedialer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public disableYouTube()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.disableYouTube"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableAndroidBrowser()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.enableAndroidBrowser"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.android.browser"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.webbrowserminiapp"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.android.browser.provider"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "set all browser as enable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public enableAndroidMarket()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.enableAndroidMarket"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAndroidMarketState(Lcom/samsung/android/knox/ContextInfo;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public enableVoiceDialer()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.enableVoiceDialer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.android.voicedialer"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.client.samsung"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.vlingo.midas"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.google.android.googlequicksearchbox"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    const-string v0, "com.samsung.voiceserviceplatform"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public enableYouTube()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.enableYouTube"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "com.google.android.youtube"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->setApplicationState(Ljava/lang/String;Z)Z

    return-void
.end method

.method public getAddHomeShorcutRequested()Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getAddHomeShorcutRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAddHomeShorcutRequested()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAllAppLastUsage()[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAllAppLastUsage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllAppLastUsage(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    return-object v0
.end method

.method public getAllDefaultApplications()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/DefaultAppConfiguration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAllDefaultApplications"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getAllDefaultApplications"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllDefaultApplications(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllWidgets(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAllWidgets"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAllWidgets(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getAppPackageNamesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAppPackageNamesAllBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppPackageNamesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAppPackageNamesAllWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPackageNamesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppPermissionsAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAppPermissionsAllBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppPermissionsBlackList()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppPermissionsBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignaturesAllBlackLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAppSignaturesAllBlackLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllBlackLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppSignaturesAllWhiteLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppControlInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAppSignaturesAllWhiteLists"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesAllWhiteLists(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getAppSignaturesBlackList()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignatureBlackList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignaturesWhiteList()[Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppSignaturesWhiteList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationCacheSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationCacheSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCacheSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationCodeSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationCodeSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCodeSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationComponentState(Landroid/content/ComponentName;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationCpuUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationCpuUsage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationCpuUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationDataSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationDataSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationDataSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationGrantedPermissions"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationGrantedPermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getApplicationIconFromDb(Ljava/lang/String;)[B
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationIconFromDb(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationIcon: Failed talking with Application control policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getApplicationInstallationEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationInstallationMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationMemoryUsage(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationMemoryUsage"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationMemoryUsage(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationName"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNameFromDb(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCustomApplicationName: Failed talking with Application control policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    return-object v2

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getApplicationNetworkStats()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationNetworkStats"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getNetworkStats(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationNotificationMode()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationNotificationMode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getApplicationNotificationModeAsUser(I)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationNotificationModeAsUser(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-interface {v1, p1, p2, v2}, Landroid/app/admin/IDevicePolicyManager;->getApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking to Device Policy Manager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getApplicationStateEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationStateList(Z)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationStateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationStateList(Lcom/samsung/android/knox/ContextInfo;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationTotalSize(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationTotalSize"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationTotalSize(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getApplicationUid(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationUid"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUid(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getApplicationUninstallationEnabled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationUninstallationMode()I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getApplicationVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationVersion"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersion(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getApplicationVersionCode(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getApplicationVersionCode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getApplicationVersionCode(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAvgNoAppUsagePerMonth()[Lcom/samsung/android/knox/application/AppInfoLastUsage;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getAvgNoAppUsagePerMonth"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAvgNoAppUsagePerMonth(Lcom/samsung/android/knox/ContextInfo;)[Lcom/samsung/android/knox/application/AppInfoLastUsage;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/samsung/android/knox/application/AppInfoLastUsage;

    return-object v0
.end method

.method public getDefaultApplication(Landroid/content/Intent;)Landroid/content/ComponentName;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getDefaultApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultApplicationInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDefaultApplicationInternal(Landroid/content/Intent;I)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisabledPackages(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getDisabledPackages"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getDisabledPackages(I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHomeShortcuts(Ljava/lang/String;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getHomeShortcuts"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getHomeShortcuts(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getInstalledApplicationsIDList()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getInstalledApplicationsIDList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getInstalledApplicationsIDList(Lcom/samsung/android/knox/ContextInfo;)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getMostCpuUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getMostCpuUsageApps"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNCPUUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMostDataUsageApps(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getMostDataUsageApps"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNDataUsageApp(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMostMemoryUsageApps(IZ)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getMostMemoryUsageApps"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getTopNMemoryUsageApp(Lcom/samsung/android/knox/ContextInfo;IZ)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getMySinglePackageName()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "getMySinglePackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getMySinglePackageName(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNewAdminActivationAppWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getNewAdminActivationAppWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->getNewAdminActivationAppWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed getNewAdminActivationAppWhiteList"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromBatteryOptimizationWhiteList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromBatteryOptimizationWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPackagesFromBlackList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromBlackList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromClearCacheBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromClearCacheBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromClearCacheWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromClearCacheWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromClearDataBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromClearDataBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromClearDataWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromClearDataWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromDisableClipboardBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromDisableClipboardWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromDisableClipboardWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromDisableUpdateBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromDisableUpdateWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromDisableUpdateWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromFocusMonitoringList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromFocusMonitoringList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromForceStopBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromForceStopBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromForceStopWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromForceStopWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromNotificationBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromNotificationBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromNotificationWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromNotificationWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromPreventStartBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromPreventStartBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPackagesFromWhiteList(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWhiteList(Lcom/samsung/android/knox/ContextInfo;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromWidgetBlackList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromWidgetBlackList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPackagesFromWidgetWhiteList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getPackagesFromWidgetWhiteList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getPackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getRuntimePermissions(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.getRuntimePermissions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getEnterpriseSdkVerInternal()Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getRuntimePermissions : support above ENTERPRISE_SDK_VERSION_5_6"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v3, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v3, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissions(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    sget-object v3, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v4, "Failed talking with application policy"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v2
.end method

.method public getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.getRuntimePermissionsEnforced"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getRuntimePermissionsEnforced(ILjava/lang/String;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUsbDevicesForDefaultAccess(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/UsbDeviceConfig;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->getUsbDevicesForDefaultAccess(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public installApplication(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.installApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->installExistingApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public installApplication(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.installApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installOrUpdateApplicationInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearCacheDisabled(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationClearDataDisabled(Ljava/lang/String;IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationFocusMonitoredAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 8

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationForceStopDisabled(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationInstalled(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationInstalled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationRunning(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationRunning(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationSetToDefault(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isApplicationSetToDefault"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationSetToDefault(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isApplicationStartDisabledAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isIntentDisabled(Landroid/content/Intent;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isIntentDisabled(Landroid/content/Intent;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isMetaKeyEventRequested(Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.isMetaKeyEventRequested"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "isMetaKeyEventRequested"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isMetaKeyEventRequested(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewAdminActivationEnabled(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminActivationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed isNewAdminActivationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNewAdminInstallationEnabled(Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->isNewAdminInstallationEnabled(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed isNewAdminInstallationEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageClipboardAllowed(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageClipboardAllowed(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPackageInBlacklistInternal(III)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInBlacklistInternal(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageInWhitelistInternal(III)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageInWhitelistInternal(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPackageUpdateAllowed(Ljava/lang/String;Z)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isPackageUpdateAllowed(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling uid does not have permission to do this operation"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->isStatusBarNotificationAllowedAsUser(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public preventNewAdminActivation(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.preventNewAdminActivation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminActivation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed preventNewAdminActivation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public preventNewAdminInstallation(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.preventNewAdminInstallation"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getRestrictionService()Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mRestrictionService:Lcom/samsung/android/knox/restriction/IRestrictionPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/restriction/IRestrictionPolicy;->preventNewAdminInstallation(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed preventNewAdminInstallation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public reapplyRuntimePermissions(I)V
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.reapplyRuntimePermissions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->reapplyRuntimePermissions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public removeAppPackageNameFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppPackageNameFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppPackageNameFromWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppPackageNameFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPackageNameFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppPermissionFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppPermissionFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppPermissionFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppSignatureFromBlackList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppSignatureFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAppSignatureFromWhiteList(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeAppSignatureFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppSignatureFromWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeDefaultApplication(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removeDefaultApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeDefaultApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/AppIdentity;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromBatteryOptimizationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBatteryOptimizationWhiteList(Lcom/samsung/android/knox/ContextInfo;Lcom/samsung/android/knox/AppIdentity;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with ApplicationPolicy service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, -0x2

    return v1
.end method

.method public removePackageFromBlackList(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromBlackList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public removePackageFromWhiteList(ILjava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackageFromWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackageFromWhiteList(Lcom/samsung/android/knox/ContextInfo;ILjava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to application policy"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x2

    return v0
.end method

.method public removePackagesFromClearCacheBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearCacheBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromClearCacheWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearCacheWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearCacheWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromClearDataBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearDataBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromClearDataWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromClearDataWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromClearDataWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromDisableClipboardBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableClipboardBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromDisableClipboardWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableClipboardWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableClipboardWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromDisableUpdateBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableUpdateBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromDisableUpdateWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromDisableUpdateWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromDisableUpdateWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromFocusMonitoringList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromFocusMonitoringList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromFocusMonitoringList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromForceStopBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromForceStopBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromForceStopWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromForceStopWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromForceStopWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromNotificationBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromNotificationBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromNotificationWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromNotificationWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeAppNotificationWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromPreventStartBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromPreventStartBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromPreventStartBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromWidgetBlackList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromWidgetBlackList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetBlackList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removePackagesFromWidgetWhiteList(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.removePackagesFromWidgetWhiteList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removePackagesFromWidgetWhiteList(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestMetaKeyEvent(Landroid/content/ComponentName;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.requestMetaKeyEvent"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestMetaKeyEvent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->requestMetaKeyEvent(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setAfWProxy(ZLcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)I
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAfWProxy(Lcom/samsung/android/knox/ContextInfo;ZLcom/samsung/android/knox/AppIdentity;Landroid/os/Bundle;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public setApplicationComponentState(Landroid/content/ComponentName;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationComponentState"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationComponentState(Lcom/samsung/android/knox/ContextInfo;Landroid/content/ComponentName;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationDisabled(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationInstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationInstallationMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationInstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setAppInstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationNotificationMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationNotificationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationNotificationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationRestrictions(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationRestrictions"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const-string v0, "24"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getDPMService()Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mDPMService:Landroid/app/admin/IDevicePolicyManager;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getCallingUserId(Lcom/samsung/android/knox/ContextInfo;)I

    move-result v2

    invoke-interface {v1, p1, p2, p3, v2}, Landroid/app/admin/IDevicePolicyManager;->setApplicationRestrictionsMDM(Landroid/content/ComponentName;Ljava/lang/String;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking to Device Policy Manager service"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationState(Ljava/lang/String;Z)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationState(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setApplicationStateList([Ljava/lang/String;Z)[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationStateList"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationStateList(Lcom/samsung/android/knox/ContextInfo;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationDisabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationDisabled(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationEnabled(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationEnabled"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationDisabled(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public setApplicationUninstallationMode(I)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setApplicationUninstallationMode"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationUninstallationMode(Lcom/samsung/android/knox/ContextInfo;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDefaultApplication(Landroid/content/Intent;Landroid/content/ComponentName;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setDefaultApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setDefaultApplication"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setDefaultApplication(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Intent;Landroid/content/ComponentName;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisableApplication(Ljava/lang/String;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setDisableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v2, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v2, p1, v1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v3, "Failed talking with application policy"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return v1
.end method

.method public setEnableApplication(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.setEnableApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setApplicationState(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setMySinglePackageName(Ljava/lang/String;)Z
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setMySinglePackageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->setMySinglePackageName(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public startApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.startApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->startApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopApp(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.stopApp"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->stopApp(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with Application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallApplication(Ljava/lang/String;Z)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.uninstallApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1, p2}, Lcom/samsung/android/knox/application/IApplicationPolicy;->uninstallApplication(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public uninstallApplications(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.uninstallApplications"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->removeManagedApplications(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public updateApplication(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.updateApplication"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/knox/application/ApplicationPolicy;->installOrUpdateApplicationInternal(Ljava/lang/String;Z)Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public updateApplicationTable(III)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.updateApplicationTable"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/knox/application/IApplicationPolicy;->updateApplicationTable(III)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking to ApplicationPolicy service "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v1, "ApplicationPolicy.verifyRuntimePermissionPackageSignature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    invoke-interface {v0, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->verifyRuntimePermissionPackageSignature(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public wipeApplicationData(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "ApplicationPolicy.wipeApplicationData"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/knox/application/ApplicationPolicy;->getService()Lcom/samsung/android/knox/application/IApplicationPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mService:Lcom/samsung/android/knox/application/IApplicationPolicy;

    iget-object v1, p0, Lcom/samsung/android/knox/application/ApplicationPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, v1, p1}, Lcom/samsung/android/knox/application/IApplicationPolicy;->wipeApplicationData(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/knox/application/ApplicationPolicy;->TAG:Ljava/lang/String;

    const-string v2, "Failed talking with application policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
