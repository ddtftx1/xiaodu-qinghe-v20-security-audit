.class public Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
.super Ljava/lang/Object;
.source "PrecomputedTextCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/text/PrecomputedTextCompat$Params;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mBreakStrategy:I

.field public mHyphenationFrequency:I

.field public final mPaint:Landroid/text/TextPaint;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field public mTextDir:Landroid/text/TextDirectionHeuristic;


# direct methods
.method public constructor <init>(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "paint"    # Landroid/text/TextPaint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    .line 117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 118
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 119
    iput v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 123
    nop

    .line 124
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 128
    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/text/PrecomputedTextCompat$Params;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 190
    new-instance v0, Landroid/support/v4/text/PrecomputedTextCompat$Params;

    iget-object v1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v3, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    iget v4, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/text/PrecomputedTextCompat$Params;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object v0
.end method

.method public setBreakStrategy(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "strategy"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 144
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mBreakStrategy:I

    .line 145
    return-object p0
.end method

.method public setHyphenationFrequency(I)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "frequency"    # I
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 162
    iput p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mHyphenationFrequency:I

    .line 163
    return-object p0
.end method

.method public setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;
    .locals 0
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x12
    .end annotation

    .line 180
    iput-object p1, p0, Landroid/support/v4/text/PrecomputedTextCompat$Params$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 181
    return-object p0
.end method
