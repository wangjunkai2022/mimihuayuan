.class public final enum Li/m0/g/b;
.super Ljava/lang/Enum;
.source "ErrorCode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Li/m0/g/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Li/m0/g/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Li/m0/g/b;

.field public static final enum c:Li/m0/g/b;

.field public static final enum d:Li/m0/g/b;

.field public static final enum e:Li/m0/g/b;

.field public static final enum f:Li/m0/g/b;

.field public static final enum g:Li/m0/g/b;

.field public static final synthetic h:[Li/m0/g/b;

.field public static final i:Li/m0/g/b$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    const/16 v0, 0xb

    new-array v1, v0, [Li/m0/g/b;

    new-instance v2, Li/m0/g/b;

    const-string v3, "NO_ERROR"

    const/4 v4, 0x0

    .line 1
    invoke-direct {v2, v3, v4, v4}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->b:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "PROTOCOL_ERROR"

    const/4 v4, 0x1

    .line 2
    invoke-direct {v2, v3, v4, v4}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->c:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "INTERNAL_ERROR"

    const/4 v4, 0x2

    .line 3
    invoke-direct {v2, v3, v4, v4}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->d:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "FLOW_CONTROL_ERROR"

    const/4 v4, 0x3

    .line 4
    invoke-direct {v2, v3, v4, v4}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->e:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "REFUSED_STREAM"

    const/4 v4, 0x4

    const/4 v5, 0x7

    .line 5
    invoke-direct {v2, v3, v4, v5}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->f:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "CANCEL"

    const/4 v4, 0x5

    const/16 v6, 0x8

    .line 6
    invoke-direct {v2, v3, v4, v6}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    sput-object v2, Li/m0/g/b;->g:Li/m0/g/b;

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "COMPRESSION_ERROR"

    const/4 v4, 0x6

    const/16 v7, 0x9

    .line 7
    invoke-direct {v2, v3, v4, v7}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v4

    new-instance v2, Li/m0/g/b;

    const-string v3, "CONNECT_ERROR"

    const/16 v4, 0xa

    .line 8
    invoke-direct {v2, v3, v5, v4}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v5

    new-instance v2, Li/m0/g/b;

    const-string v3, "ENHANCE_YOUR_CALM"

    .line 9
    invoke-direct {v2, v3, v6, v0}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    aput-object v2, v1, v6

    new-instance v0, Li/m0/g/b;

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    .line 10
    invoke-direct {v0, v2, v7, v3}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    aput-object v0, v1, v7

    new-instance v0, Li/m0/g/b;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0xd

    .line 11
    invoke-direct {v0, v2, v4, v3}, Li/m0/g/b;-><init>(Ljava/lang/String;II)V

    aput-object v0, v1, v4

    sput-object v1, Li/m0/g/b;->h:[Li/m0/g/b;

    new-instance v0, Li/m0/g/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/m0/g/b$a;-><init>(Lh/o/c/f;)V

    sput-object v0, Li/m0/g/b;->i:Li/m0/g/b$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Li/m0/g/b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Li/m0/g/b;
    .locals 1

    const-class v0, Li/m0/g/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Li/m0/g/b;

    return-object p0
.end method

.method public static values()[Li/m0/g/b;
    .locals 1

    sget-object v0, Li/m0/g/b;->h:[Li/m0/g/b;

    invoke-virtual {v0}, [Li/m0/g/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Li/m0/g/b;

    return-object v0
.end method
