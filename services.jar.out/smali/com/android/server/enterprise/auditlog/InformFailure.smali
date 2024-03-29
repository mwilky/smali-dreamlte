.class public Lcom/android/server/enterprise/auditlog/InformFailure;
.super Ljava/lang/Object;
.source "InformFailure.java"


# static fields
.field private static mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;
    .locals 2

    const-class v0, Lcom/android/server/enterprise/auditlog/InformFailure;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/enterprise/auditlog/InformFailure;

    invoke-direct {v1}, Lcom/android/server/enterprise/auditlog/InformFailure;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    :cond_0
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;
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
.method public declared-synchronized broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "mdm.intent.action.audit.log.exception"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "mdm.intent.action.audit.log.exception"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "AUDIT_LOG_EXCEPTION"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v5, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.sec.MDM_AUDIT_LOG"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
