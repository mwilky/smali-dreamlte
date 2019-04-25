.class public Lcom/samsung/android/knox/container/RCPPolicy;
.super Ljava/lang/Object;
.source "RCPPolicy.java"


# static fields
.field public static final BOOKMARKS:Ljava/lang/String; = "Bookmarks"

.field public static final CALENDAR:Ljava/lang/String; = "Calendar"

.field public static final CALL_LOG:Ljava/lang/String; = "CallLog"

.field public static final CLIPBOARD:Ljava/lang/String; = "Clipboard"

.field public static final CONTACTS:Ljava/lang/String; = "Contacts"

.field public static final DEFAULT_APPS:Ljava/lang/String; = "DefaultApps"

.field public static final EXPORT_DATA:Ljava/lang/String; = "knox-export-data"

.field public static final IMPORT_DATA:Ljava/lang/String; = "knox-import-data"

.field public static final NOTIFICATIONS:Ljava/lang/String; = "Notifications"

.field public static final SANITIZE_DATA:Ljava/lang/String; = "knox-sanitize-data"

.field public static final SHORTCUTS:Ljava/lang/String; = "Shortcuts"

.field public static final SMS:Ljava/lang/String; = "Sms"

.field private static final TAG:Ljava/lang/String; = "RCPPolicy"

.field private static gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;


# instance fields
.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method

.method static declared-synchronized getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;
    .locals 2

    const-class v0, Lcom/samsung/android/knox/container/RCPPolicy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    if-nez v1, :cond_0

    const-string/jumbo v1, "mum_container_rcp_policy"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;

    :cond_0
    sget-object v1, Lcom/samsung/android/knox/container/RCPPolicy;->gRCPService:Lcom/samsung/android/knox/container/IRCPPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public allowMoveAppsToContainer(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveAppsToContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public allowMoveFilesToContainer(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveFilesToContainer"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public allowMoveFilesToOwner(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowMoveFilesToOwner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public allowShareClipboardDataToContainer(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RCPPolicy.allowShareClipboardDataToContainer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2

    move v0, v2

    const-string v2, "RCPPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retVal after MUM is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public allowShareClipboardDataToOwner(Z)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.allowShareClipboardDataToOwner"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1}, Lcom/samsung/android/knox/container/IRCPPolicy;->allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public getAllowChangeDataSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Ljava/lang/String;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getPackagesFromNotificationSyncPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2}, Lcom/samsung/android/knox/container/IRCPPolicy;->getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public isMoveAppsToContainerAllowed()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isMoveFilesToContainerAllowed()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isMoveFilesToOwnerAllowed()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IRCPPolicy;->isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isShareClipboardDataToContainerAllowed()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IRCPPolicy;->isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2

    move v0, v2

    const-string v2, "RCPPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "retVal after MUM is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public isShareClipboardDataToOwnerAllowed()Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/container/IRCPPolicy;->isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public setAllowChangeDataSyncPolicy(Ljava/util/List;Ljava/lang/String;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.setAllowChangeDataSyncPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/knox/container/IRCPPolicy;->setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public setNotificationSyncPolicy(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "RCPPolicy.setNotificationSyncPolicy"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/container/RCPPolicy;->getRCPPolicyService()Lcom/samsung/android/knox/container/IRCPPolicy;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "RCPPolicy"

    const-string v3, " RCP policy service is not yet ready!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/knox/container/RCPPolicy;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/samsung/android/knox/container/IRCPPolicy;->setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RCPPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed talking with RCP policy service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
