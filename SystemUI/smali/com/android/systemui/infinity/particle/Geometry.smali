.class public Lcom/android/systemui/infinity/particle/Geometry;
.super Ljava/lang/Object;
.source "Geometry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/particle/Geometry$Plane;,
        Lcom/android/systemui/infinity/particle/Geometry$Sphere;,
        Lcom/android/systemui/infinity/particle/Geometry$Cylinder;,
        Lcom/android/systemui/infinity/particle/Geometry$Circle;,
        Lcom/android/systemui/infinity/particle/Geometry$Ray;,
        Lcom/android/systemui/infinity/particle/Geometry$Vector;,
        Lcom/android/systemui/infinity/particle/Geometry$Point;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static distanceBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Ray;)F
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v0, p0}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/particle/Geometry$Point;->translate(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Point;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->crossProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->length()F

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->length()F

    move-result v3

    div-float v4, v2, v3

    return v4
.end method

.method public static intersectionPoint(Lcom/android/systemui/infinity/particle/Geometry$Ray;Lcom/android/systemui/infinity/particle/Geometry$Plane;)Lcom/android/systemui/infinity/particle/Geometry$Point;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/particle/Geometry;->vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->dotProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget-object v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Plane;->normal:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->dotProduct(Lcom/android/systemui/infinity/particle/Geometry$Vector;)F

    move-result v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->point:Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Ray;->vector:Lcom/android/systemui/infinity/particle/Geometry$Vector;

    invoke-virtual {v3, v1}, Lcom/android/systemui/infinity/particle/Geometry$Vector;->scale(F)Lcom/android/systemui/infinity/particle/Geometry$Vector;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Point;->translate(Lcom/android/systemui/infinity/particle/Geometry$Vector;)Lcom/android/systemui/infinity/particle/Geometry$Point;

    move-result-object v2

    return-object v2
.end method

.method public static intersects(Lcom/android/systemui/infinity/particle/Geometry$Sphere;Lcom/android/systemui/infinity/particle/Geometry$Ray;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->center:Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/particle/Geometry;->distanceBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Ray;)F

    move-result v0

    iget v1, p0, Lcom/android/systemui/infinity/particle/Geometry$Sphere;->radius:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static vectorBetween(Lcom/android/systemui/infinity/particle/Geometry$Point;Lcom/android/systemui/infinity/particle/Geometry$Point;)Lcom/android/systemui/infinity/particle/Geometry$Vector;
    .locals 5

    new-instance v0, Lcom/android/systemui/infinity/particle/Geometry$Vector;

    iget v1, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    sub-float/2addr v1, v2

    iget v2, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    sub-float/2addr v2, v3

    iget v3, p1, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    sub-float/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/particle/Geometry$Vector;-><init>(FFF)V

    return-object v0
.end method
