.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;
.super Landroid/content/BroadcastReceiver;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

.field final synthetic val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    iput-object p2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;->val$this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.sepunion.semgoodcatchservice.GOOD_CATCH_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    new-instance v1, Lcom/samsung/android/sepunion/SemGoodCatchManager;

    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    iget-object v2, v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "FeatureWakeUp"

    const-string/jumbo v4, "wakeup"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp$2;->this$1:Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;

    invoke-static {v5}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->access$2000(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;)Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/samsung/android/sepunion/SemGoodCatchManager;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/samsung/android/sepunion/SemGoodCatchManager$OnStateChangeListener;)V

    invoke-static {v0, v1}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;->access$1902(Lcom/android/server/sepunion/SemGoodCatchService$FeatureWakeUp;Lcom/samsung/android/sepunion/SemGoodCatchManager;)Lcom/samsung/android/sepunion/SemGoodCatchManager;

    :cond_0
    return-void
.end method
