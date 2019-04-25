.class final Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;
.super Landroid/os/Handler;
.source "AbsCocktailBarStatePolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CocktailBarStateHandler"
.end annotation


# static fields
.field private static final MSG_COCKTAIL_NOTIFY_STATE_TO_BINDER:I = 0x33

.field private static final MSG_COCKTAIL_UPDATE_ACTIVATE:I = 0x31

.field private static final MSG_COCKTAIL_UPDATE_COCKTAIL_BAR_WINDOW_TYPE:I = 0x6

.field private static final MSG_COCKTAIL_UPDATE_POSITION:I = 0x4

.field private static final MSG_COCKTAIL_UPDATE_VISIBILITY:I = 0x1

.field private static final MSG_THREAD_EXPIRED:I = 0x65


# instance fields
.field final synthetic this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;


# direct methods
.method constructor <init>(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage: entry what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/16 v2, 0x31

    if-eq v0, v2, :cond_2

    const/16 v1, 0x33

    if-eq v0, v1, :cond_1

    const/16 v1, 0x65

    if-eq v0, v1, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-static {v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->access$100(Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleNotifyCurrentStateToBinder(Landroid/os/IBinder;)V

    goto :goto_2

    :cond_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    invoke-virtual {v1, v0}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateActivate(Z)V

    iget-object v1, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v1, v1, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iput-boolean v0, v1, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->activate:Z

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateCocktailBarWindowType(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->windowType:I

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdatePosition(I)V

    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget-object v0, v0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->mStateInfo:Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iput v1, v0, Lcom/samsung/android/cocktailbar/CocktailBarStateInfo;->position:I

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy$CocktailBarStateHandler;->this$0:Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/cocktailbar/policy/state/AbsCocktailBarStatePolicy;->handleUpdateVisibility(I)V

    nop

    :goto_2
    return-void
.end method
