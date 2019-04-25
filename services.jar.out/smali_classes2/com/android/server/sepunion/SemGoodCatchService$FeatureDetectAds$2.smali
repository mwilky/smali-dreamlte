.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_ON"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$400(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchHandler;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x7d0

    invoke-static/range {v2 .. v7}, Lcom/android/server/sepunion/SemGoodCatchService;->access$500(Landroid/os/Handler;IIILjava/lang/Object;I)V

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_SCREEN_OFF"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1300(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->access$1602(Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;I)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureDetectAds;->setActiveState(Z)V

    :cond_1
    :goto_0
    return-void
.end method
