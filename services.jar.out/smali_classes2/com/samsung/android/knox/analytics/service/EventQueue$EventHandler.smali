.class Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
.super Landroid/os/Handler;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage(): msg is null!"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$100(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage(): invalid msg.what"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_CLEANED_LOG_API"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "KnoxAnalyticsData"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object v2, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_KA_DEACTIVATION"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "KnoxAnalyticsData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v3, v2, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    iget-object v1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$300(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_LOG_API"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "KnoxAnalyticsData"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    iget-object v3, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v3, v2, v1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->access$200(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
