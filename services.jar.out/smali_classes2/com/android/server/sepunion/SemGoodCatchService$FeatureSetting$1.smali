.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->on()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.samsung.android.app.goodcatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "reset"

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->reset()V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$300(Lcom/android/server/sepunion/SemGoodCatchService;)Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureEvent;->reset()V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object v1, v1, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$100(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;

    iget-object v2, v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$100(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    invoke-virtual {v3}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off()V

    goto :goto_0

    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    :goto_1
    return-void
.end method
