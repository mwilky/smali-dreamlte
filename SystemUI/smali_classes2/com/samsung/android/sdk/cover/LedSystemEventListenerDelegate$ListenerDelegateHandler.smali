.class Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;
.super Landroid/os/Handler;
.source "LedSystemEventListenerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListenerDelegateHandler"
.end annotation


# instance fields
.field private final mListenerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/LedSystemEventListenerDelegate$ListenerDelegateHandler;->mListenerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;

    if-eqz v0, :cond_1

    iget v1, p1, Landroid/os/Message;->what:I

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/sdk/cover/ScoverManager$LedSystemEventListener;->onSystemCoverEvent(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method
