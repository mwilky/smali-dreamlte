.class public abstract Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;
.super Ljava/lang/Object;
.source "CoreStateVolatileObserver.java"

# interfaces
.implements Lcom/samsung/android/server/corestate/CoreStateObserver;


# instance fields
.field private mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

.field private final mHandler:Landroid/os/Handler;

.field protected final sIntegerDefaultKeyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final sVolatileStatesRepository:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected final sVolatileStatesToTypeMapForUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesToTypeMapForUser:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic lambda$setState$0(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    return-void
.end method

.method private populate(Landroid/os/Bundle;Ljava/util/Map;I)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    if-ne v4, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v5, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v6, ""

    :goto_1
    if-eqz v6, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_1
    goto/16 :goto_7

    :cond_2
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sIntegerDefaultKeyMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_2

    :cond_3
    move v7, v6

    :goto_2
    iget-object v8, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/SparseArray;

    if-eqz v8, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_3

    :cond_4
    nop

    :goto_3
    invoke-virtual {p1, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-eq v6, v9, :cond_5

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    :cond_5
    goto/16 :goto_7

    :cond_6
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_9

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    goto :goto_4

    :cond_7
    nop

    :goto_4
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_8

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const/4 v0, 0x1

    :cond_8
    goto :goto_7

    :cond_9
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_a

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    goto :goto_5

    :cond_a
    nop

    :goto_5
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-eqz v8, :cond_b

    invoke-virtual {p1, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v0, 0x1

    :cond_b
    goto :goto_7

    :cond_c
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v4, v5, :cond_e

    iget-object v5, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    if-eqz v5, :cond_d

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p3, v6}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    goto :goto_6

    :cond_d
    nop

    :goto_6
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eq v6, v7, :cond_e

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v0, 0x1

    :cond_e
    :goto_7
    goto/16 :goto_0

    :cond_f
    return v0
.end method


# virtual methods
.method public populateState(Landroid/os/Bundle;I)I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesToTypeMapForUser:Ljava/util/Map;

    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->populate(Landroid/os/Bundle;Ljava/util/Map;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    return v0
.end method

.method public removeStatesForUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method public setObserverController(Lcom/samsung/android/server/corestate/CoreStateObserverController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {p0}, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->registerObservingItems()V

    return-void
.end method

.method public setState(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;IZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "IZZ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_5

    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_0
    const-class v1, Ljava/lang/String;

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, p3

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_6
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_7
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_8

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, p3

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_8
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, p3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_9
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p2, v1, :cond_a

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->sVolatileStatesRepository:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, p3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_a
    :goto_1
    if-eqz p5, :cond_c

    if-eqz p6, :cond_b

    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mController:Lcom/samsung/android/server/corestate/CoreStateObserverController;

    invoke-virtual {v1, p4}, Lcom/samsung/android/server/corestate/CoreStateObserverController;->onCoreStateChanged(I)V

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;

    invoke-direct {v2, p0, p4}, Lcom/samsung/android/server/corestate/-$$Lambda$CoreStateVolatileObserver$93_o_p9S9I3o231rXGZEi-RAQDw;-><init>(Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_c
    :goto_2
    return-void
.end method
