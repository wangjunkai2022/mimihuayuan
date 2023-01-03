.class public final enum Lk/a/f/i$j;
.super Ljava/lang/Enum;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk/a/f/i$j;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lk/a/f/i$j;

.field public static final enum b:Lk/a/f/i$j;

.field public static final enum c:Lk/a/f/i$j;

.field public static final enum d:Lk/a/f/i$j;

.field public static final enum e:Lk/a/f/i$j;

.field public static final enum f:Lk/a/f/i$j;

.field public static final synthetic g:[Lk/a/f/i$j;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "Doctype"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->a:Lk/a/f/i$j;

    .line 2
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "StartTag"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->b:Lk/a/f/i$j;

    .line 3
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "EndTag"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->c:Lk/a/f/i$j;

    .line 4
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "Comment"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->d:Lk/a/f/i$j;

    .line 5
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "Character"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->e:Lk/a/f/i$j;

    .line 6
    new-instance v0, Lk/a/f/i$j;

    const-string v1, "EOF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lk/a/f/i$j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lk/a/f/i$j;->f:Lk/a/f/i$j;

    const/4 v1, 0x6

    new-array v1, v1, [Lk/a/f/i$j;

    .line 7
    sget-object v8, Lk/a/f/i$j;->a:Lk/a/f/i$j;

    aput-object v8, v1, v2

    sget-object v2, Lk/a/f/i$j;->b:Lk/a/f/i$j;

    aput-object v2, v1, v3

    sget-object v2, Lk/a/f/i$j;->c:Lk/a/f/i$j;

    aput-object v2, v1, v4

    sget-object v2, Lk/a/f/i$j;->d:Lk/a/f/i$j;

    aput-object v2, v1, v5

    sget-object v2, Lk/a/f/i$j;->e:Lk/a/f/i$j;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lk/a/f/i$j;->g:[Lk/a/f/i$j;

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

.method public static valueOf(Ljava/lang/String;)Lk/a/f/i$j;
    .locals 1

    .line 1
    const-class v0, Lk/a/f/i$j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk/a/f/i$j;

    return-object p0
.end method

.method public static values()[Lk/a/f/i$j;
    .locals 1

    .line 1
    sget-object v0, Lk/a/f/i$j;->g:[Lk/a/f/i$j;

    invoke-virtual {v0}, [Lk/a/f/i$j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk/a/f/i$j;

    return-object v0
.end method
