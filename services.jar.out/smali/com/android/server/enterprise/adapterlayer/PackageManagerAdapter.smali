.class public Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
.super Ljava/lang/Object;
.source "PackageManagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$MyPackageMonitor;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;,
        Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PackageManagerAdapter"

.field private static mContext:Landroid/content/Context;

.field private static mIPackageManager:Landroid/content/pm/IPackageManager;

.field private static mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;


# instance fields
.field private mBackupManagerService:Landroid/app/backup/IBackupManager;

.field private final mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    if-nez v1, :cond_0

    sput-object p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mInstance:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;
    .locals 7

    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/pm/PackageParser;

    invoke-direct {v1}, Landroid/content/pm/PackageParser;-><init>()V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object v4, v3

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v5}, Landroid/content/pm/PackageParser;->parseMonolithicPackage(Ljava/io/File;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    move-object v4, v6

    if-eqz v4, :cond_0

    invoke-static {v4, v5}, Landroid/content/pm/PackageParser;->collectCertificates(Landroid/content/pm/PackageParser$Package;Z)V
    :try_end_0
    .catch Landroid/content/pm/PackageParser$PackageParserException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    nop

    const/4 v1, 0x0

    return-object v4

    :catch_0
    move-exception v5

    return-object v3
.end method

.method public static getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    nop

    :goto_1
    if-nez v0, :cond_1

    const-string v1, "PackageManagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNameForUid() failed. uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getUserRestrictions(ILjava/lang/String;Z)Z
    .locals 5

    move v0, p2

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "user"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getUserRestrictions() failed. ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, p2

    :goto_0
    if-eq v0, p2, :cond_0

    const-string v1, "PackageManagerAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getUserRestrictions("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method public static getUsers(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    move-object p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static isExistUserId(I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isExistUserId() failed. user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return v0
.end method

.method private isUserRunningAndUnlocked(I)Z
    .locals 2

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/os/storage/StorageManager;->isUserKeyUnlocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public clearApplicationCacheFiles(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    :try_start_3
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->success:Z

    if-ne v2, v3, :cond_1

    iget-object v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearCacheObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return v0
.end method

.method public clearApplicationUserData(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, v1, p2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    const/4 v0, 0x0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public clearUserData(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    invoke-virtual {v2, p1, v1}, Landroid/app/ActivityManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v4, "PackageManagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t clear application user data for package: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :try_start_3
    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v4, v5, :cond_2

    iget-object v4, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    monitor-exit v1

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v4

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return v0
.end method

.method public clearUserData(Ljava/lang/String;I)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, v1, p2}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "PackageManagerAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t clear application user data for package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :try_start_3
    iget-boolean v4, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->success:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ClearUserDataObserver;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    monitor-exit v1

    :goto_3
    goto :goto_4

    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v2

    const/4 v0, 0x0

    const-string v3, "PackageManagerAdapter"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_4
    return v0
.end method

.method public deletePackage(Ljava/lang/String;I)Z
    .locals 2

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z

    return v1

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public deletePackageAsUser(Ljava/lang/String;II)Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/4 v4, -0x1

    move-object v3, p1

    move-object v5, v1

    move v6, p2

    move v7, p3

    invoke-interface/range {v2 .. v7}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;ILandroid/content/pm/IPackageDeleteObserver;II)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageDeleteObserver;->result:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move v0, v2

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v0
.end method

.method public getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "appwidget"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-interface {v1, p1, p2}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllWidgets(Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_0
    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getApplicationPackageInfo(Ljava/lang/String;Landroid/net/Uri;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;
    .locals 8

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;

    invoke-direct {v0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-static {p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getPackageInfo(Landroid/net/Uri;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->requestedPermissions:Ljava/util/ArrayList;

    iput-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_0
    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v3, v3, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v5, v3, v1

    iget-object v6, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Landroid/content/pm/PackageParser$Package;->mSigningDetails:Landroid/content/pm/PackageParser$SigningDetails;

    iget-object v1, v1, Landroid/content/pm/PackageParser$SigningDetails;->signatures:[Landroid/content/pm/Signature;

    iput-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signaturesArray:[Landroid/content/pm/Signature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    goto :goto_4

    :cond_3
    if-nez p1, :cond_4

    const-string v2, ""

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object p1, v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    :try_start_1
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0x1040

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    iput-object p1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz v3, :cond_5

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->permissions:Ljava/util/List;

    :cond_5
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v3, :cond_6

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v3

    :goto_3
    if-ge v1, v4, :cond_6

    aget-object v5, v3, v1

    iget-object v6, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$ApplicationPackageInfo;->signatures:Ljava/util/List;

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    goto :goto_4

    :catch_1
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve permissions & signature for package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-object v0
.end method

.method public getApplicationPackageStats(Ljava/lang/String;)Landroid/content/pm/PackageStats;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    sget-object v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    iget-boolean v4, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v4, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v4, :cond_2

    iget-object v0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    goto :goto_2

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-boolean v5, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v5, :cond_1

    iget-object v0, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    :cond_1
    throw v4

    :cond_2
    :goto_2
    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public getGrantedPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->getGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getInstalledApplications(II)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v2

    move-object v0, v2

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v1, 0x0

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public getInstalledWidgetProviders(I)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move/from16 v0, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "appwidget"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/16 v6, 0x301

    const/4 v7, 0x0

    invoke-interface {v2, v6, v0, v7}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(IIZ)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-nez v0, :cond_4

    sget-object v9, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/UserManager;

    if-eqz v9, :cond_4

    invoke-virtual {v9, v0}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    if-eq v13, v0, :cond_2

    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v14, p0

    invoke-direct {v14, v13}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->isUserRunningAndUnlocked(I)Z

    move-result v13

    const/4 v15, 0x1

    if-nez v13, :cond_1

    const-string v13, "PackageManagerAdapter"

    const-string v7, "cannot getAllProvidersForProfile for user %s because it is in locked state"

    new-array v15, v15, [Ljava/lang/Object;

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v16, 0x0

    aput-object v0, v15, v16

    invoke-static {v7, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v16, v7

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v2, v6, v0, v15}, Lcom/android/internal/appwidget/IAppWidgetService;->getAllProvidersForProfile(IIZ)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-interface {v5, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object/from16 v14, p0

    move/from16 v16, v7

    :cond_3
    :goto_1
    move/from16 v7, v16

    move/from16 v0, p1

    goto :goto_0

    :cond_4
    move-object/from16 v14, p0

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :cond_6
    move-object/from16 v14, p0

    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method public getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;I)Landroid/content/pm/PackageStats;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    :try_start_0
    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1, p2, v1}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_0

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v2

    :cond_1
    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-object v0
.end method

.method public getPkgInfo(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PackageManagerAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getAppInfo() : Exception when retrieving package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public getProcessCpuUsage(I)J
    .locals 8

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3, v2}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v3

    if-eqz v3, :cond_0

    iget v4, v3, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v4, p1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-wide/16 v2, 0x0

    if-nez v1, :cond_2

    return-wide v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v5

    add-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    const-wide/16 v4, 0x1

    :cond_3
    iget v2, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v6, 0x64

    mul-long/2addr v2, v6

    div-long/2addr v2, v4

    return-wide v2
.end method

.method public getTopCpuUsageProcesses(IZ)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/application/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v0

    if-lez p1, :cond_0

    if-ge v0, p1, :cond_1

    :cond_0
    move p1, v0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getLastUserTime()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->getLastSystemTime()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIrqTime()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->getLastIdleTime()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_2

    const-wide/16 v2, 0x1

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-nez p2, :cond_3

    sget-object v5, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    :try_start_0
    invoke-virtual {v5}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v11, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v9

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, p1, :cond_6

    iget-object v7, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    new-instance v7, Lcom/samsung/android/knox/application/AppInfo;

    invoke-direct {v7}, Lcom/samsung/android/knox/application/AppInfo;-><init>()V

    iget-object v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iput-object v8, v7, Lcom/samsung/android/knox/application/AppInfo;->packageName:Ljava/lang/String;

    iget v8, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    long-to-double v10, v2

    div-double/2addr v8, v10

    iput-wide v8, v7, Lcom/samsung/android/knox/application/AppInfo;->usage:D

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    move-object v6, v1

    goto :goto_2

    :cond_7
    const/4 v6, 0x0

    :goto_2
    return-object v6
.end method

.method public initProcessStats()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mProcessStats:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    return-void
.end method

.method public installExistingPackageAsUserForMDM(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUserForMDM(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public installPackage(Ljava/io/File;I)Ljava/lang/String;
    .locals 10

    new-instance v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v3, v0

    move v4, p2

    invoke-virtual/range {v1 .. v8}, Landroid/content/pm/PackageManager;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    monitor-enter v0

    :goto_0
    :try_start_0
    iget-boolean v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->finished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    :try_start_2
    iget v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->result:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PackageInstallObserver;->pkgName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public installPackage(Ljava/io/File;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;I)V
    .locals 9

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v2, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;

    invoke-direct {v2, p0, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$1;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$InstallationCallback;)V

    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Landroid/content/pm/PackageManager;->installPackageForMDM(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;IILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V

    return-void
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "PackageManagerAdapter"

    const-string/jumbo v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v0

    return v0
.end method

.method public readAppSizeInfo()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;",
            ">;"
        }
    .end annotation

    const-string v0, "PackageManagerAdapter"

    const-string/jumbo v1, "readAppSizeInfo start"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    new-instance v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;-><init>(Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    iget-object v7, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v8, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_1
    :try_start_1
    iget-boolean v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->finished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_0

    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    goto :goto_1

    :catch_0
    move-exception v8

    goto :goto_2

    :cond_0
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->result:Z

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    if-eqz v8, :cond_1

    iget-object v8, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v8, v8, Landroid/content/pm/PackageStats;->cacheSize:J

    iget-object v10, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v10, Landroid/content/pm/PackageStats;->codeSize:J

    add-long/2addr v8, v10

    iget-object v10, v4, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$PkgSizeObserver;->mPkgStats:Landroid/content/pm/PackageStats;

    iget-wide v10, v10, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v8, v10

    new-instance v10, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;

    invoke-direct {v10, v7, v8, v9}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter$AppInfoTask;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_0
    move-exception v5

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    :goto_3
    goto :goto_0

    :catchall_1
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_7
    const-string v5, "PackageManagerAdapter"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const-string v4, "PackageManagerAdapter"

    const-string/jumbo v5, "readAppSizeInfo end"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :goto_4
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method public revokeExternalPermissions(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2}, Landroid/content/pm/IPackageManager;->revokeExternalPermissionsForMDM(Landroid/content/pm/ResolveInfo;Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public revokePermissionEDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->revokePermissionEDMForMDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public rollbackPermission(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/pm/IPackageManager;->rollbackPermissionForMDM(Ljava/lang/String;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBackupEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_0

    const-string v0, "PackageManagerAdapter"

    const-string/jumbo v1, "failed to get backup manager service"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mBackupManagerService:Landroid/app/backup/IBackupManager;

    invoke-interface {v0, p1}, Landroid/app/backup/IBackupManager;->setBackupEnabled(Z)V

    return-void
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;III)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    sget-object v3, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catch_0
    move-exception v3

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return v0
.end method

.method public setLicensePermissions(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v0, p1}, Landroid/content/pm/IPackageManager;->setLicensePermissionsForMDM(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
