.class Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService$MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSoundItem"
.end annotation


# instance fields
.field private mDevice:I

.field private mRatio:I

.field private mUid:I

.field final synthetic this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService$MultiSoundManager;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    iput p3, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    invoke-virtual {p0, p4}, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    iput p4, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void
.end method

.method static synthetic access$19300(Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;)I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    return v0
.end method


# virtual methods
.method public getAppDevice(Z)I
    .locals 2

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->this$1:Lcom/android/server/audio/AudioService$MultiSoundManager;

    iget-object v0, v0, Lcom/android/server/audio/AudioService$MultiSoundManager;->this$0:Lcom/android/server/audio/AudioService;

    iget v1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    invoke-static {v0, v1}, Lcom/android/server/audio/AudioService;->access$16700(Lcom/android/server/audio/AudioService;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    return v0
.end method

.method public getAppVolume()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mUid:I

    return v0
.end method

.method public removable()Z
    .locals 2

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAppDevice(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mDevice:I

    return-void
.end method

.method public setAppVolume(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    :cond_0
    const-string v0, "AudioService"

    const-string v1, "Invalid app volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/server/audio/AudioService$MultiSoundManager$MultiSoundItem;->mRatio:I

    return-void
.end method
