.class Lcom/att/iqi/IQIServiceBroker$4;
.super Landroid/os/Handler;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBroker;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBroker;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IQIServiceBroker"

    const-string v1, "Unknown message"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$600(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$700(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$800(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v1}, Lcom/att/iqi/IQIServiceBroker;->access$800(Lcom/att/iqi/IQIServiceBroker;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/att/iqi/IQIServiceBroker;->access$400()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IQIServiceBroker"

    const-string v1, "Bad or disabled package"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$900(Lcom/att/iqi/IQIServiceBroker;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBroker$4;->this$0:Lcom/att/iqi/IQIServiceBroker;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBroker;->access$1000(Lcom/att/iqi/IQIServiceBroker;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
