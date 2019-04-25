.class Lcom/android/server/am/DynamicHiddenApp$1;
.super Ljava/lang/Thread;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DynamicHiddenApp;->runDecreaseHotnessScoreThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DynamicHiddenApp;


# direct methods
.method constructor <init>(Lcom/android/server/am/DynamicHiddenApp;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    :goto_0
    const-wide/32 v0, 0x5265c00

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ActivityManager_Hotness"

    const-string v1, "DecreaseHotnessScoreThread"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-static {v0}, Lcom/android/server/am/DynamicHiddenApp;->access$000(Lcom/android/server/am/DynamicHiddenApp;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x2

    if-ge v3, v4, :cond_2

    invoke-virtual {v2, v3}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->setHalf(I)V

    iget-object v4, p0, Lcom/android/server/am/DynamicHiddenApp$1;->this$0:Lcom/android/server/am/DynamicHiddenApp;

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->access$000(Lcom/android/server/am/DynamicHiddenApp;)Ljava/util/HashMap;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v4, Lcom/android/server/am/DynamicHiddenApp;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "ActivityManager_Hotness"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DecHotness! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Lcom/android/server/am/DynamicHiddenApp$HotnessValue;->getHotness(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    goto :goto_0
.end method
