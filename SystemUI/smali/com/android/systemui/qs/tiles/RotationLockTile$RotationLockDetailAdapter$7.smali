.class Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;
.super Ljava/lang/Object;
.source "RotationLockTile.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter$7;->this$1:Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;

    invoke-static {v0, p2}, Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;->access$2000(Lcom/android/systemui/qs/tiles/RotationLockTile$RotationLockDetailAdapter;Z)V

    return-void
.end method
