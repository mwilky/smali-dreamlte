.class Lcom/android/server/enterprise/securetimer/SecureTimerService$3;
.super Landroid/content/BroadcastReceiver;
.source "SecureTimerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/securetimer/SecureTimerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[SecureTimerService:] "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In User Unlocked Receiver "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[SecureTimerService:] "

    const-string v2, "ACTION_USER_UNLOCKED"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService$LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-static {v1}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1500(Lcom/android/server/enterprise/securetimer/SecureTimerService;)V

    iget-object v1, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    iget-object v2, p0, Lcom/android/server/enterprise/securetimer/SecureTimerService$3;->this$0:Lcom/android/server/enterprise/securetimer/SecureTimerService;

    invoke-static {v2}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1600(Lcom/android/server/enterprise/securetimer/SecureTimerService;)Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/enterprise/securetimer/SecureTimerService;->access$1700(Lcom/android/server/enterprise/securetimer/SecureTimerService;ZZ)V

    :cond_0
    return-void
.end method
