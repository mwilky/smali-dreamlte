.class Lcom/att/iqi/IQIServiceBrokerExt$4;
.super Landroid/content/BroadcastReceiver;
.source "IQIServiceBrokerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBrokerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/att/iqi/IQIServiceBrokerExt;


# direct methods
.method constructor <init>(Lcom/att/iqi/IQIServiceBrokerExt;)V
    .locals 0

    iput-object p1, p0, Lcom/att/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    iget-object v0, p0, Lcom/att/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v0}, Lcom/att/iqi/IQIServiceBrokerExt;->access$300(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.iqi.action.SUBMIT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/att/iqi/IQIServiceBrokerExt$4;->this$0:Lcom/att/iqi/IQIServiceBrokerExt;

    invoke-static {v3}, Lcom/att/iqi/IQIServiceBrokerExt;->access$200(Lcom/att/iqi/IQIServiceBrokerExt;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "IQIServiceBrokerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "submit metric:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/att/iqi/lib/IQIManager;->getInstance()Lcom/att/iqi/lib/IQIManager;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const/4 v4, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v5, "GS03"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :pswitch_1
    const-string v5, "GS02"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :pswitch_2
    const-string v5, "GS01"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v4, 0x0

    :cond_3
    :goto_0
    packed-switch v4, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_3
    sget-object v4, Lcom/att/iqi/lib/metrics/gs/GS03;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/att/iqi/lib/metrics/gs/GS03;

    invoke-direct {v4}, Lcom/att/iqi/lib/metrics/gs/GS03;-><init>()V

    const-string v5, "callId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS03;->setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS03;

    const-string v5, "errCode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS03;->setErrCode(I)Lcom/att/iqi/lib/metrics/gs/GS03;

    const-string/jumbo v5, "termCode"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getShort(Ljava/lang/String;)S

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS03;->setTermCode(S)Lcom/att/iqi/lib/metrics/gs/GS03;

    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    goto :goto_3

    :pswitch_4
    sget-object v4, Lcom/att/iqi/lib/metrics/gs/GS02;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/att/iqi/lib/metrics/gs/GS02;

    invoke-direct {v4}, Lcom/att/iqi/lib/metrics/gs/GS02;-><init>()V

    const-string v5, "callId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS02;->setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS02;

    const-string v5, "callState"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS02;->setCallState(B)Lcom/att/iqi/lib/metrics/gs/GS02;

    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    goto :goto_3

    :pswitch_5
    sget-object v4, Lcom/att/iqi/lib/metrics/gs/GS01;->ID:Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->shouldSubmitMetric(Lcom/att/iqi/lib/Metric$ID;)Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/att/iqi/lib/metrics/gs/GS01;

    invoke-direct {v4}, Lcom/att/iqi/lib/metrics/gs/GS01;-><init>()V

    const-string v5, "callId"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS01;->setCallId(I)Lcom/att/iqi/lib/metrics/gs/GS01;

    const-string v5, "callState"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS01;->setCallState(B)Lcom/att/iqi/lib/metrics/gs/GS01;

    const-string v5, "callNumber"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/att/iqi/lib/metrics/gs/GS01;->setCallNumber(Ljava/lang/String;)Lcom/att/iqi/lib/metrics/gs/GS01;

    const-string v5, "callMt"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/att/iqi/lib/metrics/gs/GS01;->setTerminated()Lcom/att/iqi/lib/metrics/gs/GS01;

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Lcom/att/iqi/lib/metrics/gs/GS01;->setOriginated()Lcom/att/iqi/lib/metrics/gs/GS01;

    :goto_1
    const-string v5, "callVideo"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v4}, Lcom/att/iqi/lib/metrics/gs/GS01;->setVideo()Lcom/att/iqi/lib/metrics/gs/GS01;

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcom/att/iqi/lib/metrics/gs/GS01;->setVoice()Lcom/att/iqi/lib/metrics/gs/GS01;

    :goto_2
    invoke-virtual {v3, v4}, Lcom/att/iqi/lib/IQIManager;->submitMetric(Lcom/att/iqi/lib/Metric;)V

    nop

    :cond_6
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2183ed
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
