.class Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;
.super Ljava/lang/Object;
.source "TurnOverLighting.java"

# interfaces
.implements Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateRinging"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCurrentScreenState:I

.field final synthetic this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;


# direct methods
.method public constructor <init>(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class p1, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public onNotification()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onRinging()Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$IStateMode;
    .locals 2

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onRinging"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method public onScreenChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onScreenChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->mCurrentScreenState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-static {v1}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->access$200(Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;)Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$TurnOverLightingListener;->onScreenDown(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting$StateRinging;->this$0:Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;

    invoke-virtual {v0}, Lcom/android/server/cocktailbar/edgelighting/turnover/TurnOverLighting;->stopTurnOverLighting()V

    :goto_0
    return-void
.end method
