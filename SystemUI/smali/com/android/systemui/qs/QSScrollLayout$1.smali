.class Lcom/android/systemui/qs/QSScrollLayout$1;
.super Landroid/util/Property;
.source "QSScrollLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSScrollLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/android/systemui/qs/QSScrollLayout;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/systemui/qs/QSScrollLayout;)Ljava/lang/Float;
    .locals 1

    invoke-static {p1}, Lcom/android/systemui/qs/QSScrollLayout;->access$100(Lcom/android/systemui/qs/QSScrollLayout;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSScrollLayout;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSScrollLayout$1;->get(Lcom/android/systemui/qs/QSScrollLayout;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public set(Lcom/android/systemui/qs/QSScrollLayout;Ljava/lang/Float;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/qs/QSScrollLayout;->access$200(Lcom/android/systemui/qs/QSScrollLayout;F)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSScrollLayout;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/QSScrollLayout$1;->set(Lcom/android/systemui/qs/QSScrollLayout;Ljava/lang/Float;)V

    return-void
.end method
