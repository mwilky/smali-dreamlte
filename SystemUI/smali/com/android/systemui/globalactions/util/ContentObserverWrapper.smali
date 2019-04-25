.class public Lcom/android/systemui/globalactions/util/ContentObserverWrapper;
.super Ljava/lang/Object;
.source "ContentObserverWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mObserverList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mObserverList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public registerObserver(Landroid/net/Uri;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1, p2}, Lcom/android/systemui/globalactions/util/ContentObserverWrapper$1;-><init>(Lcom/android/systemui/globalactions/util/ContentObserverWrapper;Landroid/os/Handler;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public unregisterObservers()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mObserverList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    iget-object v2, p0, Lcom/android/systemui/globalactions/util/ContentObserverWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    return-void
.end method
