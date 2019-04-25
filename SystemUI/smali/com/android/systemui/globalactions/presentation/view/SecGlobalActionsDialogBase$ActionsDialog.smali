.class Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;
.super Landroid/app/Dialog;
.source "SecGlobalActionsDialogBase.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActionsDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0, p2, p3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->getState()Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;->IDLE:Lcom/android/systemui/globalactions/presentation/view/ViewAnimationState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mPresenter:Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/SecGlobalActionsPresenter;->onCancelDialog()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;

    invoke-virtual {v2, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setOrientation(Z)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionsDialog;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->SHOW:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method
