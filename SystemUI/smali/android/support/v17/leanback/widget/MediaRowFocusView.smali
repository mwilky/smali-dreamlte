.class Landroid/support/v17/leanback/widget/MediaRowFocusView;
.super Landroid/view/View;
.source "MediaRowFocusView.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private final mRoundRectF:Landroid/graphics/RectF;

.field private mRoundRectRadius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->createPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->createPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectF:Landroid/graphics/RectF;

    invoke-direct {p0, p1}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->createPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private createPaint(Landroid/content/Context;)Landroid/graphics/Paint;
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/R$color;->lb_playback_media_row_highlight_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectRadius:I

    iget v0, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectRadius:I

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v2

    sub-int v2, v0, v2

    div-int/2addr v2, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectF:Landroid/graphics/RectF;

    neg-int v3, v2

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/MediaRowFocusView;->getHeight()I

    move-result v5

    add-int/2addr v5, v2

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectF:Landroid/graphics/RectF;

    iget v3, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectRadius:I

    int-to-float v3, v3

    iget v4, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mRoundRectRadius:I

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/MediaRowFocusView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method
