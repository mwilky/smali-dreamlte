.class final enum Lcom/android/server/display/WFDUibcManager$UIBCMode;
.super Ljava/lang/Enum;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UIBCMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/display/WFDUibcManager$UIBCMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/WFDUibcManager$UIBCMode;

.field public static final enum DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

.field public static final enum KDDISERVICE:Lcom/android/server/display/WFDUibcManager$UIBCMode;

.field public static final enum PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

.field public static final enum PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

.field public static final enum SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/WFDUibcManager$UIBCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const-string v1, "SIDESYNC"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/WFDUibcManager$UIBCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const-string v1, "KDDISERVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/WFDUibcManager$UIBCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->KDDISERVICE:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const-string v1, "PRESENTATION"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/WFDUibcManager$UIBCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    new-instance v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const-string v1, "PORTRAIT_DISPLAY"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/WFDUibcManager$UIBCMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/display/WFDUibcManager$UIBCMode;

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->DEFAULT:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->SIDESYNC:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->KDDISERVICE:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PRESENTATION:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/display/WFDUibcManager$UIBCMode;->PORTRAIT_DISPLAY:Lcom/android/server/display/WFDUibcManager$UIBCMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->$VALUES:[Lcom/android/server/display/WFDUibcManager$UIBCMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/WFDUibcManager$UIBCMode;
    .locals 1

    const-class v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/WFDUibcManager$UIBCMode;
    .locals 1

    sget-object v0, Lcom/android/server/display/WFDUibcManager$UIBCMode;->$VALUES:[Lcom/android/server/display/WFDUibcManager$UIBCMode;

    invoke-virtual {v0}, [Lcom/android/server/display/WFDUibcManager$UIBCMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/WFDUibcManager$UIBCMode;

    return-object v0
.end method
