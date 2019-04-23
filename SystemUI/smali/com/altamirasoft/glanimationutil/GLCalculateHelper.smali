.class public Lcom/altamirasoft/glanimationutil/GLCalculateHelper;
.super Ljava/lang/Object;
.source "GLCalculateHelper.java"

# interfaces
.implements Lcom/altamirasoft/glanimationutil/GLAnimatorFrameListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;
    }
.end annotation


# instance fields
.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addUpdateListener(Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;)Lcom/altamirasoft/glanimationutil/GLCalculateHelper;
    .locals 1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    :cond_0
    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public doFrame()V
    .locals 3

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/altamirasoft/glanimationutil/GLCalculateUpdateListener;->onUpdateCurrentValue(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;->onCalculateStart(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/altamirasoft/glanimationutil/GLCalculateHelper;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;

    invoke-interface {v1, p0}, Lcom/altamirasoft/glanimationutil/GLCalculateHelper$CalculateListener;->onCalculateEnd(Lcom/altamirasoft/glanimationutil/GLCalculateHelper;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
