.class public Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;
.super Landroid/widget/FrameLayout;
.source "SecGlobalActionsDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SecGlobalActionsRootView"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iget-object v0, p1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v1, "sec_global_actions_wrapped"

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setBottomTextViewMargin()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_bottomtextview_id"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bottomtextview_bottom_margin_portrait"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bottomtextview_bottom_margin_landscape"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private setGridViewMargin()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105022e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mBottomView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setLandListViewWidth()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$100(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$200(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getNumColumns()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setListViewHeight()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getNumColumns()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_1

    rem-int/lit8 v4, v3, 0x2

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v4, v3}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v1, v4

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    move v3, v0

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getVerticalSpacing()I

    move-result v4

    add-int/lit8 v5, v2, -0x1

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v4, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v4}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v5}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v6, v6, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    if-ge v3, v5, :cond_3

    iget-object v6, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v6, v6, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v6}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v7, v7, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v7, v6}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private setRootViewPadding()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setPadding(IIII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x105018c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v4, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    const-string v4, "display"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v5

    if-ne v5, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v1, v2, v2, v0, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setPadding(IIII)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne v5, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v1, v0, v2, v2, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mRootView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;

    invoke-virtual {v1, v2, v2, v2, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setPadding(IIII)V

    :goto_0
    return-void
.end method

.method private setTopViewMargin()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mTopView:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v4, "sec_global_actions_icon"

    invoke-interface {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bixby_settings_top_margin"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bixby_settings_right_margin"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bixby_settings_top_margin_land"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v5, v5, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    const-string/jumbo v6, "sec_global_actions_bixby_settings_right_margin_land"

    invoke-interface {v5, v6}, Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;->getResourceID(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsDialogBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged newConfig.orientation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->setOrientation(Z)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mAnimatorFSM:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;

    sget-object v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;->CONFIGURATION_CHANGED:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM;->handleAnimationEvent(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsAnimatorFSM$Event;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$000(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLogWrapper:Lcom/android/systemui/globalactions/util/LogWrapper;

    const-string v1, "SecGlobalActionsDialogBase"

    const-string v2, "RootView onLayout"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/globalactions/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setRootViewPadding()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setLandListViewWidth()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setGridViewMargin()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setTopViewMargin()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setBottomTextViewMargin()V

    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->setListViewHeight()V

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$002(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;Z)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsRootView;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
