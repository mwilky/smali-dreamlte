.class Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;
.super Landroid/support/v4/app/ActivityCompat$SharedElementCallback21Impl;
.source "ActivityCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActivityCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedElementCallback23Impl"
.end annotation


# virtual methods
.method public onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;->mCallback:Landroid/support/v4/app/SharedElementCallback;

    new-instance v1, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;

    invoke-direct {v1, p0, p3}, Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl$1;-><init>(Landroid/support/v4/app/ActivityCompat$SharedElementCallback23Impl;Landroid/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/support/v4/app/SharedElementCallback;->onSharedElementsArrived(Ljava/util/List;Ljava/util/List;Landroid/support/v4/app/SharedElementCallback$OnSharedElementsReadyListener;)V

    return-void
.end method
