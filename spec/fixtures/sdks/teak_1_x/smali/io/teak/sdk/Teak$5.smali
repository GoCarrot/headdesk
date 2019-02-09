.class final Lio/teak/sdk/Teak$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/teak/sdk/Teak;->openIABPurchaseSucceeded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lio/teak/sdk/Teak$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lio/teak/sdk/Teak;->Instance:Lio/teak/sdk/o;

    iget-object v1, p0, Lio/teak/sdk/Teak$5;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lio/teak/sdk/o;->a(Ljava/lang/String;)V

    .line 468
    return-void
.end method
