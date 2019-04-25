.class Lcom/android/server/VibratorService$SecSettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecSettingsObserver"
.end annotation


# instance fields
.field private mType:I

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;I)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iput p2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$4500(Lcom/android/server/VibratorService;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "VibratorService"

    const-string/jumbo v1, "mIsEnableIntensity is false (onChange)"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;)[I

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$4700(Lcom/android/server/VibratorService;)[I

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_8

    if-ge v1, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    iget v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    const/4 v4, -0x2

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$5100(Lcom/android/server/VibratorService;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v2, "VibratorService"

    const-string/jumbo v3, "mIsSupportedE is false (onChange)"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v3}, Lcom/android/server/VibratorService;->access$5200(Lcom/android/server/VibratorService;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v3, v2, :cond_3

    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "touchForceMagnitudeMaxLevel : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v5, v5, v6

    invoke-static {v2, v5, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v2, v3, :cond_4

    move v5, v2

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v5}, Lcom/android/server/VibratorService;->access$5200(Lcom/android/server/VibratorService;)[I

    move-result-object v5

    aget v5, v5, v2

    :goto_0
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->access$5302(Lcom/android/server/VibratorService;I)I

    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->access$5300(Lcom/android/server/VibratorService;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->vibratorForceTouchIntensity(J)V

    const-string v4, "VibratorService"

    const-string v5, "Force magnitude has changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_1
    iget-object v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v3, v3, v5

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v2, v0, :cond_5

    move v4, v2

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    aget v4, v4, v2

    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->access$5002(Lcom/android/server/VibratorService;I)I

    const-string v3, "VibratorService"

    const-string v4, "Notification magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_2
    iget-object v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v3, v3, v5

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v2, v0, :cond_6

    move v4, v2

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    aget v4, v4, v2

    :goto_2
    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->access$4902(Lcom/android/server/VibratorService;I)I

    const-string v3, "VibratorService"

    const-string v4, "Call magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_3
    iget-object v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v3, v3, v5

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    if-le v2, v1, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    iget-object v4, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v4}, Lcom/android/server/VibratorService;->access$4700(Lcom/android/server/VibratorService;)[I

    move-result-object v4

    aget v4, v4, v2

    :goto_3
    invoke-static {v3, v4}, Lcom/android/server/VibratorService;->access$4802(Lcom/android/server/VibratorService;I)I

    const-string v3, "VibratorService"

    const-string v4, "Feedback magnitude has changed"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_4
    return-void

    :cond_8
    :goto_5
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "magnitudeMaxLevel(onChange) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", touchMagnitudeMaxLevel(onChange) : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reload()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/server/VibratorService;->access$4300()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/server/VibratorService$SecSettingsObserver;->mType:I

    aget-object v1, v1, v2

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
