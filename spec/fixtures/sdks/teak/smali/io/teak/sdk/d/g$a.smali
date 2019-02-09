.class public final Lio/teak/sdk/d/g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/d/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final c:Lio/teak/sdk/d/g$a;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 18
    new-instance v0, Lio/teak/sdk/d/g$a;

    const/16 v1, 0x257

    const-string v2, "{}"

    invoke-direct {v0, v1, v2}, Lio/teak/sdk/d/g$a;-><init>(ILjava/lang/String;)V

    sput-object v0, Lio/teak/sdk/d/g$a;->c:Lio/teak/sdk/d/g$a;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lio/teak/sdk/d/g$a;->a:I

    .line 15
    iput-object p2, p0, Lio/teak/sdk/d/g$a;->b:Ljava/lang/String;

    .line 16
    return-void
.end method
