.class public Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "SecGlobalActionsDialogBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActionViewAdapter"
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

.field mViewModelList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method private setVerticalSpacing()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mConditionChecker:Lcom/android/systemui/globalactions/util/ConditionChecker;

    sget-object v1, Lcom/android/systemui/globalactions/util/SystemConditions;->IS_TABLET_DEVICE:Lcom/android/systemui/globalactions/util/SystemConditions;

    invoke-interface {v0, v1}, Lcom/android/systemui/globalactions/util/ConditionChecker;->isEnabled(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v0, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$600(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setVerticalSpacing(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    new-instance v8, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v4, v0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mResourceFactory:Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$300(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$400(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Z

    move-result v6

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    invoke-static {v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->access$500(Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;)Lcom/android/systemui/globalactions/presentation/view/ViewStateController;

    move-result-object v7

    move-object v0, v8

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;-><init>(Landroid/content/Context;Lcom/android/systemui/globalactions/presentation/viewmodel/ActionViewModel;Landroid/view/ViewGroup;Lcom/android/systemui/globalactions/presentation/view/ResourceFactory;ZZLcom/android/systemui/globalactions/presentation/view/ViewStateController;)V

    if-nez p2, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;->inflateView()Landroid/view/View;

    move-result-object p2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;->setViewAttrs(Landroid/view/View;Z)V

    invoke-virtual {v0, p1}, Lcom/android/systemui/globalactions/presentation/view/GlobalActionItemView;->setViewIndex(I)V

    return-object p2
.end method

.method public resetItems()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public updateNumColumns()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->mViewModelList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v3, v3, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    :goto_0
    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_1

    :cond_1
    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v2, v2, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->this$0:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;

    iget-object v1, v1, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase;->mLandListView:Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$SecGlobalActionsGridView;->setNumColumns(I)V

    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/globalactions/presentation/view/SecGlobalActionsDialogBase$ActionViewAdapter;->setVerticalSpacing()V

    return-void
.end method
