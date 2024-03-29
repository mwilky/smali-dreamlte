.class final Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;
.super Landroid/accounts/AccountManagerInternal;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccountManagerInternalImpl"
.end annotation


# instance fields
.field private mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Landroid/accounts/AccountManagerInternal;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;-><init>(Lcom/android/server/accounts/AccountManagerService;)V

    return-void
.end method


# virtual methods
.method public addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v0}, Lcom/android/server/accounts/AccountManagerService;->access$4200(Lcom/android/server/accounts/AccountManagerService;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public backupAccountAccessPermissions(I)[B
    .locals 3

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/accounts/AccountManagerBackupHelper;->backupAccountAccessPermissions(I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasAccountAccess(Landroid/accounts/Account;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accounts/AccountManagerService;->access$4300(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
    .locals 10

    if-nez p1, :cond_0

    const-string v0, "AccountManagerService"

    const-string v1, "account cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "packageName cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-gez p3, :cond_2

    const-string v0, "AccountManagerService"

    const-string/jumbo v1, "user id must be concrete"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-nez p4, :cond_3

    const-string v0, "AccountManagerService"

    const-string v1, "callback cannot be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string v0, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AccountManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestAccountAccess [account]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "[packageName]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-virtual {v1, p3}, Lcom/android/server/accounts/AccountManagerService;->getUserAccounts(I)Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    move-result-object v1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->access$3900(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Lcom/android/server/accounts/AccountManagerService$UserAccounts;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    const-string v1, "AccountManagerService"

    const-string/jumbo v2, "requestAccountAccess: account is hidden"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/server/accounts/AccountManagerService;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "booleanResult"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p4, v1}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    return-void

    :cond_6
    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v1}, Lcom/android/server/accounts/AccountManagerService;->access$500(Lcom/android/server/accounts/AccountManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v2, p1, p2, v1, p4}, Lcom/android/server/accounts/AccountManagerService;->access$4000(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v3}, Lcom/android/server/accounts/AccountManagerService;->access$4100(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-static {v4}, Lcom/android/server/accounts/AccountManagerService;->access$4100(Lcom/android/server/accounts/AccountManagerService;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/accounts/AccountManagerService$UserAccounts;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    iget-object v3, v3, Lcom/android/server/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-static {p2, v1, v3}, Lcom/android/internal/notification/SystemNotificationChannels;->createAccountChannelForPackage(Ljava/lang/String;ILandroid/content/Context;)V

    iget-object v3, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v6, 0x0

    move-object v5, p1

    move-object v7, v2

    move-object v8, p2

    move v9, p3

    invoke-static/range {v3 .. v9}, Lcom/android/server/accounts/AccountManagerService;->access$2200(Lcom/android/server/accounts/AccountManagerService;Lcom/android/server/accounts/AccountManagerService$UserAccounts;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :catch_0
    move-exception v1

    const-string v2, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public restoreAccountAccessPermissions([BI)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/accounts/AccountManagerBackupHelper;

    iget-object v2, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {v1, v2, p0}, Lcom/android/server/accounts/AccountManagerBackupHelper;-><init>(Lcom/android/server/accounts/AccountManagerService;Landroid/accounts/AccountManagerInternal;)V

    iput-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    :cond_0
    iget-object v1, p0, Lcom/android/server/accounts/AccountManagerService$AccountManagerInternalImpl;->mBackupHelper:Lcom/android/server/accounts/AccountManagerBackupHelper;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/accounts/AccountManagerBackupHelper;->restoreAccountAccessPermissions([BI)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
