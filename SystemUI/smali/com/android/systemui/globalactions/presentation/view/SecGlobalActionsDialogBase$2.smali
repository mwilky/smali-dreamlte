.class Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;
.super Ljava/lang/Object;
.source "SecGlobalActionsDialogBase.java"

# interfaces
.implements Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimator$ViewUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getDismissRunnable$0(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->dismiss()V

    return-void
.end method


# virtual methods
.method public createConfirmView()Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;
    .locals 9

    new-instance v8, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$900(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$400(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$500(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    move-result-object v7

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;ZZLcom/android/systemui/globalactions/presentation/view/ViewStateController;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;->createView(Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "sec_global_actions_state"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->getConfirmDescriptionView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-object v0
.end method

.method public getBottomView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getConfirmDescriptionView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v1, "sec_global_actions_description"

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v1, "sec_global_actions_icon_label_view"

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getConfirmationView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDismissRunnable()Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$2$0pjXq-dH0_7qwx36qrNcb83RaAw;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/presentation/view/-$$Lambda$SecGlobalActionsDialogBase$2$0pjXq-dH0_7qwx36qrNcb83RaAw;-><init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;)V

    return-object v0
.end method

.method public getLandscapeListView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    return-object v0
.end method

.method public getListView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    return-object v0
.end method

.method public getPowerOffViewForSafeModeVI(Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;)Landroid/view/ViewGroup;
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;->createView(Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v3, "sec_global_actions_icon"

    invoke-interface {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_label"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10403ad

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "tw_ic_do_poweroff"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->getConfirmIconLabelView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v5}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$800(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v6, 0x11

    iput v6, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-object v4
.end method

.method public getRootView()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    return-object v0
.end method

.method public getSelectedActionView(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$900(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getViewIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isSafeModeConfirm()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$900(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;->getActionInfo()Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionInfo;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "safe_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public requestFocusFor(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v1, "sec_global_actions_icon"

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v2, "sec_global_actions_icon"

    invoke-interface {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x40

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    const/high16 v3, 0x60000

    invoke-virtual {v2, v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setDescendantFocusability(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$2;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    :goto_0
    return-void
.end method
