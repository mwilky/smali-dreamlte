.class Lcom/android/server/VibratorService$FeatureSetting;
.super Lcom/android/server/VibratorService$SecFeature;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureSetting"
.end annotation


# static fields
.field private static final KEY_ALL_MUTE:Ljava/lang/String; = "all_mute"

.field private static final KEY_APP_MUTE:Ljava/lang/String; = "app_mute"

.field private static final PACKAGE_NAME_GOOD_CATCH:Ljava/lang/String; = "com.samsung.android.app.goodcatch"

.field private static final VALUE_ON:Ljava/lang/String; = "on"


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    const-string v0, "FeatureSetting"

    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService$SecFeature;-><init>(Lcom/android/server/VibratorService;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureSetting;->on()V

    return-void
.end method


# virtual methods
.method public addGoodCatchFilter()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$3400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/VibratorService$FeatureSetting$1;

    invoke-direct {v2, p0}, Lcom/android/server/VibratorService$FeatureSetting$1;-><init>(Lcom/android/server/VibratorService$FeatureSetting;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/VibratorService$SecFeature;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/VibratorService$FeatureSetting;->setUri(Landroid/net/Uri;)V

    return-void
.end method

.method public update()Z
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/VibratorService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update, cur.getCount() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "VibratorService"

    const-string/jumbo v2, "update, cur is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "function"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all_mute"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAllMute;->on()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAllMute;->off()V

    goto :goto_0

    :cond_3
    const-string v3, "app_mute"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "on"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAppMute;->on()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAppMute;->off()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {}, Lcom/android/server/VibratorService;->access$300()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mAllMute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$7100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAllMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAllMute;->isOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mAppMute : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/VibratorService$FeatureSetting;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/VibratorService$FeatureAppMute;->isOn()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v1, 0x1

    return v1

    :goto_3
    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v1
.end method
