.class Lcom/android/server/accessibility/SamsungMagnifierWindow$3;
.super Landroid/os/Handler;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/SamsungMagnifierWindow;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown message type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mTimeHandler: HANDLER_MESSAGE_SHOW_CONTROL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "mTimeHandler: HANDLER_MESSAGE_HIDE_CONTROL"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$3;->this$0:Lcom/android/server/accessibility/SamsungMagnifierWindow;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->access$1500(Lcom/android/server/accessibility/SamsungMagnifierWindow;Z)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
