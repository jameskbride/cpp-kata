#include <gtest/gtest.h>
#include "Kata.h"

TEST(KataTest, AssertTruth)
{
  Kata* kata = new Kata();
  EXPECT_EQ(true, kata->truth());
  delete kata;
}


