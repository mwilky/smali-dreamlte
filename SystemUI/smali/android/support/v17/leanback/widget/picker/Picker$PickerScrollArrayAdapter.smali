.class Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "Picker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/Picker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PickerScrollArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mColIndex:I

.field private mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

.field private final mResource:I

.field private final mTextViewResourceId:I

.field final synthetic this$0:Landroid/support/v17/leanback/widget/picker/Picker;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/picker/Picker;Landroid/content/Context;III)V
    .locals 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput p3, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    iput p5, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    iput p4, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker;->mColumns:Ljava/util/ArrayList;

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;I)V
    .locals 5

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mData:Landroid/support/v17/leanback/widget/picker/PickerColumn;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getMinValue()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/picker/PickerColumn;->getLabelFor(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v1, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/picker/Picker;->mColumnViews:Ljava/util/List;

    iget v3, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v17/leanback/widget/VerticalGridView;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/VerticalGridView;->getSelectedPosition()I

    move-result v2

    const/4 v3, 0x0

    if-ne v2, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iget v4, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mColIndex:I

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/support/v17/leanback/widget/picker/Picker;->setOrAnimateAlpha(Landroid/view/View;ZIZ)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onBindViewHolder(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mResource:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->mTextViewResourceId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    move-object v2, v1

    check-cast v2, Landroid/widget/TextView;

    :goto_0
    new-instance v3, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-direct {v3, v1, v2}, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;-><init>(Landroid/view/View;Landroid/widget/TextView;)V

    return-object v3
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onViewAttachedToWindow(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;)V
    .locals 2

    iget-object v0, p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->this$0:Landroid/support/v17/leanback/widget/picker/Picker;

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/picker/Picker;->isActivated()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/Picker$PickerScrollArrayAdapter;->onViewAttachedToWindow(Landroid/support/v17/leanback/widget/picker/Picker$ViewHolder;)V

    return-void
.end method
