.class Lcom/android/systemui/qs/customize/SecQSCustomizer$2;
.super Landroid/os/Handler;
.source "SecQSCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/customize/SecQSCustomizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/SecQSCustomizer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const-string v0, "SecQSCustomizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage() msg.what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$100(Lcom/android/systemui/qs/customize/SecQSCustomizer;)I

    move-result v0

    const/16 v1, 0x1388

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$200(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-static {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$300(Lcom/android/systemui/qs/customize/SecQSCustomizer;)Lcom/android/systemui/qs/customize/SecQSCustomizer$QSCustomizerTileLayout;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;

    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/qs/customize/SecQSCustomizer$2;->this$0:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-static {v1, v2}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->access$400(Lcom/android/systemui/qs/customize/SecQSCustomizer;Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_1

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/customize/CustomizerPagedTileLayout;->handleAnimate(Lcom/android/systemui/qs/customize/SecQSCustomizer$MessageObjectAnim;)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
