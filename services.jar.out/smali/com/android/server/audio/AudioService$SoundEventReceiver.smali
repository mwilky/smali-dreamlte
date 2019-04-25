.class Lcom/android/server/audio/AudioService$SoundEventReceiver;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundEventReceiver"
.end annotation


# instance fields
.field mEventReceiver:Landroid/content/ComponentName;

.field mEventType:I


# direct methods
.method public constructor <init>(ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    iput-object p2, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    move-object v1, p1

    check-cast v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;

    iget-object v2, v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v2, :cond_0

    return v0

    :cond_0
    iget-object v2, v1, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v0
.end method

.method public hasEventType(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventType:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public samePackageName(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/AudioService$SoundEventReceiver;->mEventReceiver:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
