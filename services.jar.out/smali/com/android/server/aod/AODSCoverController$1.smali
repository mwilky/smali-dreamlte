.class Lcom/android/server/aod/AODSCoverController$1;
.super Lcom/samsung/android/cover/CoverManager$StateListener;
.source "AODSCoverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODSCoverController;->register()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/aod/AODSCoverController;


# direct methods
.method constructor <init>(Lcom/android/server/aod/AODSCoverController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-direct {p0}, Lcom/samsung/android/cover/CoverManager$StateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverStateChanged(Lcom/samsung/android/cover/CoverState;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getAttachState()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->access$002(Lcom/android/server/aod/AODSCoverController;Z)Z

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/server/aod/AODSCoverController;->access$102(Lcom/android/server/aod/AODSCoverController;Z)Z

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$000(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$100(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$202(Z)Z

    iget-object v0, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v0}, Lcom/android/server/aod/AODSCoverController;->access$300(Lcom/android/server/aod/AODSCoverController;)Lcom/android/server/aod/AODSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/aod/AODSettingHelper;->isAODEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$000(Lcom/android/server/aod/AODSCoverController;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/aod/AODConfig;->canRegisterAODListener()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/samsung/android/cover/CoverState;->type:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$400(Lcom/android/server/aod/AODSCoverController;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/aod/AODSCoverController$1;->this$0:Lcom/android/server/aod/AODSCoverController;

    invoke-static {v1}, Lcom/android/server/aod/AODSCoverController;->access$500(Lcom/android/server/aod/AODSCoverController;)V

    :cond_2
    :goto_1
    return-void
.end method
