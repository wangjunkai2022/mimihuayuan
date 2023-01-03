.class public final enum Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;
.super Ljava/lang/Enum;
.source "IX5WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

.field public static final enum NARROW_COLUMNS:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

.field public static final enum NORMAL:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

.field public static final enum SINGLE_COLUMN:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->NORMAL:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    .line 2
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    const-string v1, "SINGLE_COLUMN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    .line 3
    new-instance v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    const-string v1, "NARROW_COLUMNS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    .line 4
    sget-object v5, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->NORMAL:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    aput-object v5, v1, v2

    sget-object v2, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->SINGLE_COLUMN:Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    aput-object v2, v1, v3

    aput-object v0, v1, v4

    sput-object v1, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->$VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;
    .locals 1

    .line 1
    const-class v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->$VALUES:[Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    invoke-virtual {v0}, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings$LayoutAlgorithm;

    return-object v0
.end method
