.class final Lio/teak/sdk/k$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/teak/sdk/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:[F

.field c:I


# direct methods
.method constructor <init>(Lio/teak/sdk/k;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lio/teak/sdk/k$f;->a:F

    .line 80
    new-array v0, v1, [F

    iput-object v0, p0, Lio/teak/sdk/k$f;->b:[F

    .line 81
    iput v1, p0, Lio/teak/sdk/k$f;->c:I

    .line 82
    return-void
.end method
