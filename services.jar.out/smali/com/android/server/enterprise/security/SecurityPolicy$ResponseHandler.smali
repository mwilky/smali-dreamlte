.class Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;
.super Landroid/os/Handler;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResponseHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;-><init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, "SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown msg type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$800(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$702(Lcom/android/server/enterprise/security/SecurityPolicy;Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    iget-object v1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$000(Lcom/android/server/enterprise/security/SecurityPolicy;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$ResponseHandler;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {v2}, Lcom/android/server/enterprise/security/SecurityPolicy;->access$700(Lcom/android/server/enterprise/security/SecurityPolicy;)Lcom/android/server/enterprise/security/SecurityPolicy$FactoryWipeReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const-string v1, "SecurityPolicy"

    const-string/jumbo v2, "successful unregister of Broadcast Receiver "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "SecurityPolicy"

    const-string/jumbo v2, "message not send from Broadcast Receiver "

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    nop

    :goto_0
    return-void
.end method
