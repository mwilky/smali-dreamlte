.class Lcom/android/server/VibratorService$SecFeatureObserver;
.super Landroid/database/ContentObserver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecFeatureObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/VibratorService$SecFeatureObserver;->this$0:Lcom/android/server/VibratorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$6800(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureSetting;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$FeatureSetting;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/VibratorService;->access$6900(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$FeatureAppMute;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/VibratorService$FeatureAppMute;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/VibratorService$SecFeatureObserver;->update()V

    return-void
.end method

.method private update()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService$SecFeatureObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibratorHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v2, v1}, Lcom/android/server/VibratorService;->access$7300(Landroid/os/Handler;IIILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/VibratorService$SecFeatureObserver;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v0}, Lcom/android/server/VibratorService;->access$6600(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibratorHandler;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3, v2, v2, v1}, Lcom/android/server/VibratorService;->access$7300(Landroid/os/Handler;IIILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    invoke-direct {p0}, Lcom/android/server/VibratorService$SecFeatureObserver;->update()V

    return-void
.end method
