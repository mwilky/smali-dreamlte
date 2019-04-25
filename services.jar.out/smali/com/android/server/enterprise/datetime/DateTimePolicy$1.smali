.class Lcom/android/server/enterprise/datetime/DateTimePolicy$1;
.super Landroid/content/BroadcastReceiver;
.source "DateTimePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/datetime/DateTimePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "DateTimePolicyService"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$000(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$100(Lcom/android/server/enterprise/datetime/DateTimePolicy;)Lcom/samsung/android/knox/datetime/NtpInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/knox/datetime/NtpInfo;->getServer()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/enterprise/datetime/DateTimePolicy$1;->this$0:Lcom/android/server/enterprise/datetime/DateTimePolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->access$200(Lcom/android/server/enterprise/datetime/DateTimePolicy;)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    return-void
.end method
