.class public final Lio/teak/sdk/c/i;
.super Lio/teak/sdk/n;
.source "SourceFile"


# instance fields
.field public final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 24
    const-string v0, "PurchaseFailedEvent"

    invoke-direct {p0, v0}, Lio/teak/sdk/n;-><init>(Ljava/lang/String;)V

    .line 25
    iput p1, p0, Lio/teak/sdk/c/i;->b:I

    .line 26
    return-void
.end method
