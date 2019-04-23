.class Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;
.super Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;
.source "RightShortcutImageCreator.java"


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/keyguardimage/AbsShortcutImageCreator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d009f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getColor()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setPreviewView(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getShortcutManager()Lcom/android/systemui/util/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getViewImage(Landroid/view/View;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p2, :cond_0

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getSideMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Point;->x:I

    iget v3, p1, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;->getBottomMargin(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p2, Landroid/graphics/Point;->y:I

    :cond_0
    return-object v1
.end method
