.class public Lcom/samsung/android/knox/lockscreen/LSOContainerView;
.super Landroid/widget/LinearLayout;
.source "LSOContainerView.java"


# instance fields
.field private final lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    const/16 v0, 0x20

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->isFieldUpdated(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getGravity()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setGravity(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setGravity(I)V

    :goto_0
    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getOrientation()Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->VERTICAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setOrientation(I)V

    :cond_1
    const/16 v0, 0x100

    invoke-virtual {p2, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->isFieldUpdated(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getBGImagePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setClickable(Z)V

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->setPadding(IIII)V

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->addViews()V

    return-void
.end method

.method private addViews()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->lsoContainer:Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemView;->getView(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->getLayoutParams(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;->addView(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private getLayoutParams(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    const/16 v3, 0x20

    const/4 v4, 0x4

    if-nez v2, :cond_0

    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_0
    const/4 v2, -0x2

    const/4 v5, -0x2

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWeight()F

    move-result v6

    invoke-virtual {p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getWidth()I

    move-result v2

    :cond_1
    invoke-virtual {p1, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getHeight()I

    move-result v5

    :cond_2
    const/4 v1, 0x0

    cmpl-float v1, v6, v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    move-object v0, v1

    goto :goto_0

    :cond_3
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v2, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    :cond_4
    return-object v0
.end method
