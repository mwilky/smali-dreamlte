.class Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;
.super Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;
.source "SemGoodCatchService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/SemGoodCatchService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureSetting"
.end annotation


# static fields
.field private static final PACKAGE_NAME_GOOD_CATCH:Ljava/lang/String; = "com.samsung.android.app.goodcatch"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/SemGoodCatchService;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/SemGoodCatchService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    const-string v0, "FeatureSetting"

    invoke-direct {p0, p1, v0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;-><init>(Lcom/android/server/sepunion/SemGoodCatchService;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->on()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public on()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/sepunion/SemGoodCatchService$SecFeature;->on()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v1}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1200(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;

    invoke-direct {v2, p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting$1;-><init>(Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public update()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v0}, Lcom/android/server/sepunion/SemGoodCatchService;->access$100(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v2}, Lcom/android/server/sepunion/SemGoodCatchService;->access$1100(Lcom/android/server/sepunion/SemGoodCatchService;)Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update, cur.getCount() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "update, cur is null"

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-nez v2, :cond_4

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "module"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "function"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "value"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/sepunion/SemGoodCatchService$FeatureSetting;->this$0:Lcom/android/server/sepunion/SemGoodCatchService;

    invoke-static {v6}, Lcom/android/server/sepunion/SemGoodCatchService;->access$100(Lcom/android/server/sepunion/SemGoodCatchService;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;

    invoke-virtual {v7, v3, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->has(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string/jumbo v6, "on"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v7, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->on(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v7, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->isOn(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7, v4}, Lcom/android/server/sepunion/SemGoodCatchService$GoodCatchClient;->off(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    goto/16 :goto_1

    :cond_3
    goto :goto_2

    :cond_4
    if-eqz v1, :cond_5

    :goto_3
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_5

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lcom/android/server/sepunion/SemGoodCatchService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_4
    :try_start_3
    monitor-exit v0

    return-void

    :goto_5
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v1

    goto :goto_7

    :cond_6
    :goto_6
    throw v2

    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
