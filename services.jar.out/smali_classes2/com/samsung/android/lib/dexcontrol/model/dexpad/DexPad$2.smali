.class Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;
.super Ljava/lang/Object;
.source "DexPad.java"

# interfaces
.implements Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/lib/dexcontrol/uvdm/response/IResponseListener<",
        "Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 5

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFail : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->getData()[B

    move-result-object v2

    invoke-virtual {v2}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$300(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DXUO"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->insertHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$400(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DXUW"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->insertHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$500(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v3}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$200(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DXUR"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v4, v1}, Lcom/samsung/android/lib/dexcontrol/utils/HwLogger;->insertHQM(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$600(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/lib/dexcontrol/utils/ErrorData;->count(I)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic onFail(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->onFail(ILcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method

.method public onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v0}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->getData()[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->this$0:Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;

    invoke-static {v1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;->access$100(Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;->setData([B)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/dexpad/DexPad$2;->onSuccess(Lcom/samsung/android/lib/dexcontrol/uvdm/response/ResponseResult;)V

    return-void
.end method
