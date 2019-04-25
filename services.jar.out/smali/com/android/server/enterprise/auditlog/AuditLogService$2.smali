.class Lcom/android/server/enterprise/auditlog/AuditLogService$2;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "AuditLogService"

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v0, v5

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    monitor-exit v2

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    const-string v7, "AuditLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The device time has been changed. Current Time = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    :goto_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v0, v4

    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    goto :goto_2

    :cond_4
    monitor-exit v1

    nop

    :cond_5
    :goto_3
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
