.class abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PinItemRequestInner"
.end annotation


# instance fields
.field private mAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mLauncherUid:I

.field protected final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .locals 0

    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    return-void
.end method

.method private isCallerValid()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isCallerUid(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Landroid/os/Bundle;)Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "options cannot be unparceled"

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    monitor-enter p0

    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1

    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "accept() called already"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Calling uid mismatch"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected tryAccept()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
