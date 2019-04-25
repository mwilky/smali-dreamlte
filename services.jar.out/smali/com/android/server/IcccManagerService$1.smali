.class Lcom/android/server/IcccManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "IcccManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IcccManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IcccManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/IcccManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive intent action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "status"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SysScope scanning finished"

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Result"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->access$002(I)I

    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mSysScopeResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/IcccManagerService;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->access$100(Lcom/android/server/IcccManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v1}, Lcom/android/server/IcccManagerService;->access$200(Lcom/android/server/IcccManagerService;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "Not System UID. Only system UID caller can change status"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onReceive:ACTION_SYSSCOPESTATUS-exception"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_0
    goto/16 :goto_6

    :cond_2
    const-string v1, "com.samsung.intent.action.BCS_REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_3

    :try_start_1
    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "data is null "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_3
    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "command"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "AT+ICCCINFO=1,0,0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.intent.action.BCS_RESPONSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "AT+ICCCINFO=1,0,0\r\n+ICCCINFO:1,1,"

    iget-object v5, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v5, v4}, Lcom/android/server/IcccManagerService;->access$300(Lcom/android/server/IcccManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    const-string/jumbo v5, "response"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/IcccManagerService;->access$400()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_1
    goto :goto_3

    :goto_2
    nop

    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "onReceive:ACTION_BCS_REQUEST-exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    :goto_3
    goto :goto_6

    :cond_5
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v2, "ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/misc/tz_iccc/"

    const-string/jumbo v3, "key.dat"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v3, "Create ICCC key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    invoke-static {v2}, Lcom/android/server/IcccManagerService;->access$500(Lcom/android/server/IcccManagerService;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    :try_start_2
    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Call getDeviceStatus to generate key"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/IcccManagerService$1;->this$0:Lcom/android/server/IcccManagerService;

    const/4 v4, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/IcccManagerService;->getDeviceStatus(I[B)[B

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_5

    :cond_6
    sget-object v3, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string v4, "Nonce is null, not possible to getDeviceStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    goto :goto_6

    :goto_5
    nop

    sget-object v4, Lcom/android/server/IcccManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "onReceive:ACTION_BOOT_COMPLETED-exception: getDeviceStatus failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void
.end method
