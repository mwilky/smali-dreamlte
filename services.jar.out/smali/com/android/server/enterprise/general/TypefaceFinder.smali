.class public Lcom/android/server/enterprise/general/TypefaceFinder;
.super Ljava/lang/Object;
.source "TypefaceFinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;
    }
.end annotation


# static fields
.field public static final DEFAULT_FONT_VALUE:Ljava/lang/String; = "default"

.field static final FONT_ASSET_DIR:Ljava/lang/String; = "xml"

.field private static final FONT_DIRECTORY:Ljava/lang/String; = "fonts/"

.field private static final FONT_EXTENSION:Ljava/lang/String; = ".ttf"

.field private static final FONT_SAMSUNGONE_DOWNLOAD:Ljava/lang/String; = "com.monotype.android.font.samsungoneuiregular"

.field private static final FONT_SAMSUNGONE_PRELOAD:Ljava/lang/String; = "com.monotype.android.font.samsungone"

.field private static final TAG:Ljava/lang/String; = "TypefaceFinder"


# instance fields
.field public context:Landroid/content/Context;

.field public final mTypefaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/enterprise/general/Typeface;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    return-void
.end method

.method private deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-eq v2, v3, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public findMatchingTypeface(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;
    .locals 5

    const/4 v0, 0x0

    const-string v1, "TypefaceFinder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "findMatchingTypefaceByName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    const-string v2, "TypefaceFinder"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "findMatchingTypeface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string/jumbo v2, "xml"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    nop

    nop

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "xml/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {p0, v3, v2, p2}, Lcom/android/server/enterprise/general/TypefaceFinder;->parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :catch_1
    move-exception v2

    return v1
.end method

.method public getMonospaceEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "default"

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getMonospaceName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    const-string v0, "default"

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "default"

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, ""

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    new-instance v6, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;

    invoke-direct {v6}, Lcom/android/server/enterprise/general/TypefaceFinder$TypefaceSortByName;-><init>()V

    invoke-static {v0, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    move v6, v0

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getSansName()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v8

    const/16 v0, 0x2f

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    const/16 v0, 0x2e

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    :cond_0
    move v10, v0

    add-int/lit8 v0, v9, 0x1

    invoke-virtual {v8, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v11, " "

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const/16 v0, 0x80

    :try_start_0
    invoke-virtual {v2, v12, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v13, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string/jumbo v0, "fonts/"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".ttf"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v15, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v15}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v0

    const-string v0, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v15, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "com.monotype.android.font.samsungoneuiregular"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget-object v15, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/enterprise/general/Typeface;

    move-object/from16 v19, v18

    move/from16 v20, v0

    move-object/from16 v0, v19

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v21, v0

    const-string v0, "com.monotype.android.font.samsungone"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    nop

    move/from16 v0, v20

    move-object/from16 v2, p1

    goto :goto_1

    :cond_3
    move/from16 v20, v0

    :goto_2
    if-eqz v0, :cond_5

    goto/16 :goto_3

    :cond_4
    move-object/from16 v17, v0

    :cond_5
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.monotype.android.font.foundation"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    :cond_6
    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v15, "com.monotype.android.font.samsungone"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {v1, v7}, Lcom/android/server/enterprise/general/TypefaceFinder;->deleteWhiteSpace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v0}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    const-string v2, "TypefaceFinder"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getSansEntries - Typeface.createFromAsset caused an exception for - fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ".ttf"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move-object/from16 v2, p1

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method public getSerifEntries(Ljava/util/Vector;Ljava/util/Vector;)V
    .locals 3

    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v0, "default"

    invoke-virtual {p2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1}, Lcom/android/server/enterprise/general/Typeface;->getSerifName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v2}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public parseTypefaceXml(Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    new-instance v3, Lcom/android/server/enterprise/general/TypefaceParser;

    invoke-direct {v3}, Lcom/android/server/enterprise/general/TypefaceParser;-><init>()V

    invoke-interface {v2, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p2}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-virtual {v3}, Lcom/android/server/enterprise/general/TypefaceParser;->getParsedData()Lcom/android/server/enterprise/general/Typeface;

    move-result-object v4

    const-string v5, "com.monotype.android.font.samsungone"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "SamsungOneUI-Regular.xml"

    invoke-virtual {v4, v5}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, p1}, Lcom/android/server/enterprise/general/Typeface;->setTypefaceFilename(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v4, p3}, Lcom/android/server/enterprise/general/Typeface;->setFontPackageName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/general/TypefaceFinder;->mTypefaces:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method
